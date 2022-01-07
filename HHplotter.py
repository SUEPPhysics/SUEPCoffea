#!/usr/bin/env/ python
#Plotter for HH variables
#%config InlineBackend.figure_format = 'retina'
import sys

import json
import logging
import os
import re
import yaml

from joblib import Parallel, delayed
import matplotlib.pyplot as plt
import matplotlib._color_data as mcd
import matplotlib.patches as mpatch
from matplotlib.ticker import (MultipleLocator, AutoMinorLocator)
import numpy as np
import pandas as pd
import seaborn as sns
from scipy import interpolate
from scipy.optimize import curve_fit, fsolve
from tqdm import tqdm

try:
    import uproot3 as uproot
    import uproot3_methods as uproot_methods
except:
    import uproot
    import uproot_methods
logging.getLogger().setLevel(logging.INFO)

COLORS=list(sns.color_palette('Set2').as_hex())
#plt.style.use('physics.mplstyle')


def get_histograms(hist_dir):
    histograms={}

    logging.info('Loading histograms into memory.')
    for filename in tqdm(os.listdir(hist_dir)):

        if 'QCD_Pt-15to20_MuEnrichedPt5' in filename: continue
        if 'QCD_Pt-20to30_MuEnrichedPt5' in filename: continue
        if 'EMEnriched' in filename: continue
        if 'SingleElectron' in filename: continue
        if 'DoubleEG' in filename: continue

        samplename = filename.split('_WS')[0]

        fn_sample = os.path.join(hist_dir, filename)
        f_sample = uproot.open(fn_sample)
        histogram_sample = f_sample.allitems( filterclass=lambda cls: issubclass(cls, uproot_methods.classes.TH1.Methods))

        histograms[samplename] = histogram_sample

    logging.info('Finished loading histograms.')
    return histograms

def xs_scale(xsections, ufile, proc):
    xsec  = xsections[proc]["xsec"]
    xsec *= xsections[proc]["kr"]
    xsec *= xsections[proc]["br"]
    xsec *= 1000.0
    #print (proc, xsec)
    assert xsec > 0, "{} has a null cross section!".format(proc)
    scale = 36000/ufile["Runs"].array("genEventSumw").sum()
    return scale

def get_xsections(infile):
    with open(infile) as f:
        try:
            xsections = yaml.safe_load(f.read())
        except yaml.YAMLError as exc:
            print(exc)
    return xsections

def get_normalizations(samples_directory, xsections, histogram_names):
    norm_dict = {}

    logging.info('Obtaining normalizations.')

    for fn in tqdm(os.listdir(samples_directory)):
        fn_sample = os.path.join(samples_directory, fn)
        _proc = os.path.basename(fn).replace(".root","")
        _file = uproot.open(fn_sample)
        if ("DoubleEG") in fn:
            _scale = 1
        elif ("DoubleMuon") in fn:
            _scale = 1
        elif ("SingleElectron") in fn:
            _scale = 1
        elif ("SingleMuon") in fn:
            _scale = 1
        else:
            _scale  = xs_scale(xsections, ufile=_file, proc=_proc)
        for idx, name in enumerate(histogram_names):
            if name in fn:
                norm_dict[name] = _scale
                del histogram_names[idx]
                break
    logging.info('Finished obtaining normalizations.')

    return(norm_dict)

############### THESE NUMBERS SCALE BY LUMI/GENSUMWEIGHT. THE XSEC IS ALREADY SCALED IN THE PLOT.................. FROM COFFEA OKAY

def rebin( a, newshape ):
        '''Rebin an array to a new shape.
        '''
        assert len(a.shape) == len(newshape)

        slices = [ slice(0,old, float(old)/new) for old,new in zip(a.shape,newshape) ]
        coordinates = np.mgrid[slices]
        indices = coordinates.astype('i')   #choose the biggest smaller integer index
        return a[tuple(indices)]

def rebin_factor( a, newshape ):
        '''Rebin an array to a new shape.
        newshape must be a factor of a.shape.
        '''
        assert len(a.shape) == len(newshape)
        assert not sometrue(mod( a.shape, newshape ))

        slices = [ slice(None,None, old/new) for old,new in zip(a.shape,newshape) ]
        return a[slices]

def normalize_event_yields(event_yields, normalizations, file_to_category):
    categorized_yields = {}

    for sample in event_yields:
        category = file_to_category[sample]
        if category not in categorized_yields:
            categorized_yields[category] = normalizations[sample] * event_yields[sample]
        else:
            categorized_yields[category] += normalizations[sample] * event_yields[sample]

    return categorized_yields

def get_bins_and_event_yields(histograms, normalizations):
    all_bins = []
    all_event_yields = []
    names = []

    with open('2016_sample_reference.json', 'r') as infile:
        file_to_category = json.load(infile)

    logging.info('Getting bins and event yields.')

    for idx, (name, roothist) in enumerate(tqdm(histograms['DoubleMuon_Run2016B-02Apr2020_ver2-v1'])):
        name = name.decode("utf-8")
        name = name.replace(";1", "")
        if "genEventSumw" == name:
            print("bye")
            continue

        event_yields = {}
        for key, value in histograms.items():
            event_yields[key] = np.abs(value[idx][1].numpy())[0]
        output = normalize_event_yields(event_yields, normalizations, file_to_category)
        output['Other'] = output['VV']  + output['SingleTop'] + output['Wjets'] + output['ttV']
        all_event_yields.append(output)

        bins = roothist.numpy()[1]
        all_bins.append(roothist.numpy()[1])
        names.append(name)

    logging.info('Finished getting bins and event yields.')

    return names, all_bins, all_event_yields

def estimate_background(names, all_event_yields, tol=1e-16, maxiter=50, disp=False):
    names_for_bkgd_est = ['Zlep_cand_mass_DYcontrol_QCD_C', 'Zlep_cand_mass_TTcontrol_QCD_C',
                          'Zlep_cand_mass_DYcontrol', 'Zlep_cand_mass_TTcontrol',
                          'Zlep_cand_mass_QCD_B','Zlep_cand_mass_QCD_D']
    idxs_for_bkgd_est = []
    for bkgd_name in names_for_bkgd_est:
        for idx, name in enumerate(names):
            if name == bkgd_name:
                idxs_for_bkgd_est.append(idx)
                break

    dy_c, tt_c, dy, tt, qcd_b, qcd_d = *[all_event_yields[idx] for idx in idxs_for_bkgd_est],

    qcd_norm = 100
    dy_norm = 100
    tt_norm = 100
    error = 100

    residual_func = lambda x, y, z: x['Data'] - (x['DY']*y + x['TT']*z + x['SMHiggs'] + x['Other'])

    counter = 0

    while (error > tol) and (counter < maxiter):
        dy_c_shape = residual_func(dy_c, 1, 1)
        tt_c_shape = residual_func(tt_c, 1, 1)

        updated_dy_norm = np.sum((dy['Data'] - (qcd_norm * dy_c_shape + dy['TT'] + dy['SMHiggs'] + dy['Other'])) / np.sum(dy['DY']))
        updated_tt_norm = np.sum((tt['Data'] - (qcd_norm * tt_c_shape + tt['DY'] + tt['SMHiggs'] + tt['Other'])) / np.sum(tt['TT']))

        qcd_b_val = np.sum(residual_func(qcd_b, dy_norm, tt_norm))
        qcd_d_val = np.sum(residual_func(qcd_d, dy_norm, tt_norm))

        updated_qcd_norm = qcd_b_val / qcd_d_val
        error = np.sqrt((updated_qcd_norm - qcd_norm)**2 + np.abs(updated_dy_norm - dy_norm)**2 + np.abs(updated_tt_norm - tt_norm)**2)

        #print(f'DY norm: {dy_norm}, TT norm: {tt_norm}, fBD: {qcd_norm}, err: {current_err}')

        qcd_norm = updated_qcd_norm
        dy_norm = updated_dy_norm
        tt_norm = updated_tt_norm

        counter += 1

    if disp:
        print(f'qcd_norm: {qcd_norm} \n'
              f'dy_norm: {dy_norm} \n'
              f'tt_norm: {tt_norm} \n'
              f'Error: {error} \n'
              f'Converged: {error <= tol} \n'
              f'Iterations: {counter}')

    return dy_norm, tt_norm, qcd_norm

def new_plotting(idx, name, bins, all_event_yields, outdir=''):
    fig, axarr = plt.subplots(2, dpi=150, figsize=(6, 5), sharex=True,
                              gridspec_kw={'hspace': 0.05, 'height_ratios': (0.8,0.2)},
                              constrained_layout=False)
    upper = axarr[0]
    lower = axarr[1]
    Other = 0
    MC = 0
    Data = 0

    for key in all_event_yields:
        if key == 'VV' or key == 'SingleTop' or key == 'Wjets' or key == 'ttV':
            Other += all_event_yields[key]
        elif key == 'DY' or key == 'TT' or key == 'SMHiggs':
            MC += all_event_yields[key]
        elif key == 'Data':
            Data += all_event_yields['Data']

    MC += Other

    ratio = Data/MC
    binc = np.array([ 0.5*(bins[j]+bins[j+1])for j in range(bins.shape[0]-1)])
    binc = bins[:-1] + np.diff(bins) * 0.5
    xerr = np.diff(bins)*0.5

    upper.errorbar(binc, Data, xerr = None, yerr = np.sqrt(Data), fmt = 'o',
                   zorder=10, color='black', label='Data', markersize=3)


    all_weights = np.vstack([all_event_yields['SMHiggs'], Other, all_event_yields['DY'], all_event_yields['TT']]).transpose()
    all_x = np.vstack([binc] * all_weights.shape[1]).transpose()
    labels = ['TT', 'DY', 'Other', 'SMHiggs'][::-1]

    upper.hist(x=all_x, bins=bins, weights=all_weights,
               histtype='stepfilled', edgecolor='black', zorder=1,
               stacked=True, color=COLORS[:all_weights.shape[1]], label=labels)

    upper.set_yscale("log")
    upper.set_ylim([0.01, 1000000])

    #Set parameters that will be used to make the plots prettier
    max_y = upper.get_ylim()[1]
    max_x = max(bins)
    min_x = min(bins)
    x_range = max_x - min_x
    lower_label = min_x - x_range*0.05
    upper_label = max_x - x_range*0.35


    #X and Y labels (Do not use the central matplotlob default)
    upper.set_ylabel("Events/bin", y=1, ha='right')
    upper.tick_params(axis='both', which='major', direction='in',
                      bottom=True, right=False, top=False, left=True,
                      color='black')
    upper.tick_params(axis='both', which='minor', direction='in',
                      bottom=True, right=False, top=False, left=True,
                      color='black')
    lower.set_xlabel(name, x=1, ha='right')
    lower.set_ylabel("Data/MC", fontsize = 10)
    lower.set_ylim(0, 2)
    yerr = np.sqrt(Data) / MC / 1000
    lower.errorbar(binc, ratio, yerr = yerr, marker = '.', color = 'black', linestyle ='none')
    lower.plot([min_x, max_x],[1,1],linestyle=':', color = 'black')
    lower.xaxis.set_minor_locator(AutoMinorLocator())
    lower.yaxis.set_minor_locator(AutoMinorLocator())
    lower.tick_params(axis='both', which='major', direction='in', length=4,
                      bottom=True, right=False, top=False, left=True,
                      color='black')
    lower.tick_params(axis='both', which='minor', direction='in', length=2,
                      bottom=True, right=False, top=False, left=True,
                      color='black')

    lower.grid(visible=True, which='both', axis='y', linestyle=':')
    lower.grid(visible=True, which='major', axis='x', linestyle=':')


    cms = upper.text(
        lower_label, max_y*1.08, u"CMS $\it{Preliminary}$",
        fontsize=16, fontweight='bold',
    )

    lumi = upper.text(
        upper_label, max_y*1.08, r"%.1f fb$^{-1}$ (13 TeV)" % 36,
        fontsize=14,
    )

    upper.legend()
    fig.savefig(os.path.join(outdir, f'{name}.png'), bbox_inches='tight')
    plt.close()
    #plt.show()

def main():
    import argparse
    parser = argparse.ArgumentParser(description='Vivan\'s plotting tool')
    parser.add_argument('--sample_dir', type=str, required=False, default=None,
                        help='Directory containing sample files.')
    parser.add_argument('--hist_dir', type=str, required=False, default=None,
                        help='Directory containing histogram files.')
    parser.add_argument('--xfile', type=str, required=False, default=None,
                        help='File containing cross sections.')
    parser.add_argument('--year', type=str, required=False, default=None,
                        help='Run year')
    parser.add_argument('--series', action='store_true', required=False,
                        help='Make plots in series.')
    parser.add_argument('--outdir', type=str, required=False, default=None,
                        help='Path to save plots.')

    args = parser.parse_args()

    if args.hist_dir is None:
        directory = "/eos/user/v/vinguyen/coffeafiles/2016-fixed-rename/"
    else:
        directory = args.hist_dir
    if args.sample_dir is None:
        samples_directory = "/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/v1/2016/"
    else:
        samples_directory = args.sample_dir
    if args.xfile is None:
        xfile = '/afs/cern.ch/work/v/vinguyen/private/CMSSW_10_6_4/src/PhysicsTools/MonoZ/data/xsections_2016.yaml'
    else:
        xfile = args.xfile
    if args.year is None:
        year = '2016'
    else:
        year = args.year

    if args.outdir is not None and not os.path.isdir(args.outdir):
        print(f'{args.outdir} does not exist. Making new directory.')
        os.mkdir(args.outdir)
    if args.outdir is None:
        outdir = ''
    else:
        outdir = args.outdir

    histograms = get_histograms(directory)
    xsections = get_xsections(xfile)
    normalizations = get_normalizations(samples_directory, xsections, list(histograms.keys()))

    names, all_bins, all_event_yields = get_bins_and_event_yields(histograms, normalizations)

    background_estimates = estimate_background(names, all_event_yields, disp=True)

    logging.info('Making plots.')

    if not args.series:
        num_cpus = os.cpu_count()
        batch_size = 1 #len(all_bins) // num_cpus + 1
        (Parallel(n_jobs=num_cpus, batch_size=batch_size)
         (delayed(new_plotting)(idx, name, bins, all_event_yields[idx], outdir=outdir)
         for idx, (name, bins) in enumerate(zip(names, all_bins))))
    else:
        for idx, (name, bins) in enumerate(zip(names, all_bins)):
            new_plotting(idx, name, bins, all_event_yields[idx], outdir=outdir)

    logging.info(f'Finished making plots and saved to {outdir}.')

if __name__ == '__main__':
	main()
