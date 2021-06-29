import awkward as ak
import numpy as np
#import pytest
#import fastjet.pyjet
import pyjet
from coffea import hist, processor

class SUEP_cluster(processor.ProcessorABC):
    def __init__(self, isMC, era=2017, sample="DY", do_syst=False, syst_var='', weight_syst=False, haddFileName=None, flag=False):
        self._flag = flag
        self.do_syst = do_syst
        self.era = era
        self.isMC = isMC
        self.sample = sample
        self.syst_var, self.syst_suffix = (syst_var, f'_sys_{syst_var}') if do_syst and syst_var else ('', '')
        self.weight_syst = weight_syst
        self.outfile = haddFileName
        #Set up for the histograms
        self._accumulator = processor.dict_accumulator({
            "uncleaned_tracks": hist.Hist(
                "Events",
                hist.Bin("Uncleaned_Ntracks", "Uncleaned NTracks", 10000, 0, 10000)
            ),
            "tracks": hist.Hist(
                "Events",
                hist.Bin("Ntracks", "NTracks", 200, 0, 200)
            ),
            "pT" : hist.Hist(
                "Counts", 
                hist.Bin("pT", "$pT$ [GeV]", 200, 0, 200)
            )
        })

    @property
    def accumulator(self):
        return self._accumulator

    def process(self, events):
        output = self.accumulator.identity()
        dataset = events.metadata['dataset']
        Cands = ak.zip({
            "pt": events.PFCands_trkPt,
            "eta": events.PFCands_trkEta,
            "phi": events.PFCands_trkPhi,
            "mass": events.PFCands_mass,
            "PV": events.PFCands_fromPV
        }, with_name="PtEtaPhiMCandidate")

        #print(ak.Array(Cands))
        cut = (events.PFCands_fromPV > 1) & (events.PFCands_trkPt > 1) & (events.PFCands_trkEta < 2.5)
        Cleaned_cands = Cands[cut]
        #print(ak.Array(Cleaned_cands)[0])
        input_fastjet2 = ak.Array(Cleaned_cands)
        input_fastjet = input_fastjet2.to_numpy
        #input_fastjet = ak.to_numpy(input_fastjet2)
        print(input_fastjet2.pt[1])
        for event in input_fastjet2:
            track_list = list(zip(event.pt,event.eta,event.phi,event.mass))
            fastjet_in = np.array(track_list, dtype=[('pT', 'f8'), ('eta', 'f8'), ('phi', 'f8'), ('mass', 'f8')])
            sequence = pyjet.cluster(fastjet_in, R=1.5, p=1) #p=-1,0,1 for anti-kt, aachen, and kt respectively
            fastjets = sequence.inclusive_jets(ptmin=3)
            #print(len(fastjets))
        #sequence = pyjet.cluster(input_fastjet, R=1.5, p=1)
        #fastjets = sequence.inclusive_jets(ptmin=3)
        #jetdef = fastjet.JetDefinition(fastjet.antikt_algorithm, 0.6)
        #cluster = fastjet.ClusterSequence(Cleaned_cands, jetdef)

        #Now we will fill
        output["uncleaned_tracks"].fill(
            Uncleaned_Ntracks=ak.num(Cands),
        ) 
        output["tracks"].fill(
            Ntracks=ak.num(Cleaned_cands),
        )
        output["pT"].fill(
            pT=(Cleaned_cands.pt[0]),
        )

        return output

    def postprocess(self, accumulator):
        return accumulator
