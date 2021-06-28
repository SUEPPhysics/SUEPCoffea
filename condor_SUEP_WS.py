import os
import re

from coffea.processor import run_uproot_job, futures_executor

#from python.SUEP_Producer import *
#from python.SumWeights import *
#from python.SUEP_Analysis import *
from python.Tracks import *

#import uproot3 as uproot
import argparse
import uproot
from coffea.hist import Hist, Bin, export1d
from coffea.nanoevents import NanoEventsFactory, BaseSchema

import time

parser = argparse.ArgumentParser("")
parser.add_argument('--isMC', type=int, default=1, help="")
parser.add_argument('--jobNum', type=int, default=1, help="")
parser.add_argument('--era', type=str, default="2018", help="")
parser.add_argument('--doSyst', type=int, default=1, help="")
parser.add_argument('--infile', type=str, default=None, help="")
parser.add_argument('--dataset', type=str, default="X", help="")
parser.add_argument('--nevt', type=str, default=-1, help="")

options = parser.parse_args()

#pre_selection = ""

#if float(options.nevt) > 0:
#    print((" passing this cut and : ", options.nevt))
#    pre_selection += ' && (Entry$ < {})'.format(options.nevt)

uproot.open.defaults["xrootd_handler"] = uproot.source.xrootd.MultithreadedXRootDSource
#file = uproot.open(options.infile)
#fileset = []
#fileset.append(file)

fileset = {
        'files': [
        options.infile
]
}

modules_era = []
modules_era.append(SUEP_cluster(isMC=options.isMC, era=int(options.era), do_syst=1, syst_var='', sample=options.dataset))

f = uproot.recreate("tree_%s_WS.root" % str(options.jobNum))
for instance in modules_era:
    output = run_uproot_job(
        {instance.sample: [options.infile]},
        treename='Events',
        processor_instance=instance,
        executor=futures_executor,
        executor_args={'workers': 10},
        chunksize=500000
    )
    for h, hist in output.items():
        f[h] = export1d(hist)
