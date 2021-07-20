import awkward as ak
import numpy as np
import fastjet
import math
from coffea import hist, processor
import vector
vector.register_awkward()

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
                "Events", 
                hist.Bin("pT", "$pT$ [GeV]", 200, 0, 200)
            ),
            "Nfastjets" : hist.Hist(
                "Events",
                hist.Bin("Nfastjets", "# Fastjets", 10, 0, 10)
            ),
            "SUEP_multi_nconst" : hist.Hist(
                "Events",
                hist.Bin("SUEP_multi_nconst", "# Tracks", 250, 0, 250)
            ),
            "SUEP_multi_pt" : hist.Hist(
                "Events",
                hist.Bin("SUEP_multi_pt", "pT", 100, 0, 2000)
            ),
            "SUEP_multi_eta" : hist.Hist(
                "Events",
                hist.Bin("SUEP_multi_eta", "eta", 100, -5, 5)
            ),
            "SUEP_multi_phi" : hist.Hist(
                "Events",
                hist.Bin("SUEP_multi_phi", "phi", 100, 0, 6.5)
            ),
            "SUEP_multi_mass" : hist.Hist(
                "Events",
                hist.Bin("SUEP_multi_mass", "mass", 150, 0, 4000)
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
            "mass": events.PFCands_mass
        }, with_name="Momentum4D")

        #Cands = ak.zip({
        #    "px": events.PFCands_trkPt * np.sin(events.PFCands_trkPhi),
        #    "py": events.PFCands_trkPt * np.cos(events.PFCands_trkPhi),
        #    "pz": events.PFCands_trkPt * np.sinh(events.PFCands_trkEta),
        #    "E": np.sqrt(events.PFCands_mass**2 + (events.PFCands_trkPt * np.cosh(events.PFCands_trkEta))**2 ),
        #    "ex": events.PFCands_fromPV
        #}, with_name="Momentum4D")

        cut = (events.PFCands_fromPV > 1) & (events.PFCands_trkPt > 1) & (events.PFCands_trkEta < 2.5)
        Cleaned_cands = Cands[cut]

        jetdef = fastjet.JetDefinition(fastjet.antikt_algorithm, 1.5)
        cluster = fastjet.ClusterSequence(Cleaned_cands, jetdef)
 
        ak_inclusive_jets = ak.with_name(cluster.inclusive_jets(),"Momentum4D")
        ak_inclusive_cluster = ak.with_name(cluster.constituents(),"Momentum4D")

        chonkiest_jet = ak.firsts(ak.argsort(ak.num(ak_inclusive_cluster, axis=2), axis=1, ascending=False))
        thicc_jets = ak_inclusive_jets[chonkiest_jet]

        SUEP_Cands = ak.zip({
            "pt": thicc_jets.pt,
            "eta": thicc_jets.eta,
            "phi": thicc_jets.phi,
            "mass": thicc_jets.mass
        }, with_name="Momentum4D")

        #Creating the collection of SUEP candidates from the clustered jets
        #SUEP_Cands = ak.zip({
        #    "pt": np.sqrt(thicc_jets.px**2 + thicc_jets.py**2),
        #    "eta": np.arcsinh(thicc_jets.px/np.sqrt(thicc_jets.px**2 + thicc_jets.py**2)),
        #    "phi": np.arctan(thicc_jets.py/thicc_jets.px),
        #    "mass": np.sqrt(thicc_jets.E**2 - thicc_jets.px**2 - thicc_jets.py**2)
        #}, with_name="Momentum4D")
       
        #Now we will fill
        output["uncleaned_tracks"].fill(
            Uncleaned_Ntracks=ak.num(Cands),
        ) 
        output["tracks"].fill(
            Ntracks=ak.num(Cleaned_cands),
        )
        output["pT"].fill(
            pT=(Cleaned_cands.px[0]),
        )
        output["Nfastjets"].fill(
            Nfastjets=ak.num(ak_inclusive_jets),
        )
        output["SUEP_multi_nconst"].fill(
            SUEP_multi_nconst=ak.max(ak.num(ak_inclusive_cluster, axis=2),axis=1)
        )
        output["SUEP_multi_pt"].fill(
            SUEP_multi_pt=ak.flatten(SUEP_Cands.pt)
        )
        output["SUEP_multi_eta"].fill(
            SUEP_multi_eta=ak.flatten(SUEP_Cands.eta)
        )
        output["SUEP_multi_phi"].fill(
            SUEP_multi_phi=ak.flatten(SUEP_Cands.phi)
        )
        output["SUEP_multi_mass"].fill(
            SUEP_multi_mass=ak.flatten(SUEP_Cands.mass)
        )

        return output

    def postprocess(self, accumulator):
        return accumulator
