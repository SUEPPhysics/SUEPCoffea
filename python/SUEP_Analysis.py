"""
WSProducer.py
Workspace producers using coffea.
"""
from coffea.hist import Hist, Bin, export1d
from coffea.processor import ProcessorABC, LazyDataFrame, dict_accumulator
import awkward as ak
from coffea.nanoevents import NanoEventsFactory, NanoAODSchema
from coffea.nanoevents.methods import vector
import uproot
#from uproot3 import recreate
import numpy as np
import argparse
ak.behavior.update(vector.behavior)

parser = argparse.ArgumentParser("")
parser.add_argument('--isMC', type=int, default=1, help="")
parser.add_argument('--jobNum', type=int, default=1, help="")
parser.add_argument('--era', type=str, default="2018", help="")
parser.add_argument('--doSyst', type=int, default=1, help="")
parser.add_argument('--infile', type=str, default=None, help="")
parser.add_argument('--dataset', type=str, default="X", help="")
parser.add_argument('--nevt', type=str, default=-1, help="")

options = parser.parse_args()
#output = self.accumulator.identity()
fin = uproot.open(options.infile)
tree = fin["Events"]

# let's build the lepton arrays back into objects
# in the future, some of this verbosity can be reduced
arrays = {k.replace('Electron_', ''): v for k, v in tree.arrays(filter_name="Electron_*", how=dict).items()}
electrons = ak.zip({'x': arrays.pop('pt'),
                    'y': arrays.pop('eta'),
                    'z': arrays.pop("phi"),
                    't': arrays.pop("mass"),
                    },
                    with_name="LorentzVector"
)


arrays = {k.replace('Muon_', ''): v for k,v in tree.arrays(filter_name="Muon_*", how=dict).items()}
muons = ak.zip({'x': arrays.pop('pt'),
                'y': arrays.pop('eta'),
                'z': arrays.pop("phi"),
                't': arrays.pop("mass"),
                },
                with_name="LorentzVector"
)

print(tree.arrays(filter_name="PFCands_*", how=dict).items())

arrays = {k.replace('PFCands_', ''): v for k,v in tree.arrays(filter_name="PFCands_*", how=dict).items()}
tracks = ak.zip({'x': arrays.pop('trkPt'),
                'y': arrays.pop('trkEta'),
                'z': arrays.pop("trkPhi"),
                't': arrays.pop("mass"),
                },
                with_name="LorentzVector"
)

print("Avg. electrons/event:", ak.sum(ak.num(electrons))/tree.num_entries)
print("Avg. muons/event:", ak.sum(ak.num(muons))/tree.num_entries)
print("Avg. tracks/event:", ak.sum(ak.num(tracks))/tree.num_entries)
        #weight = self.weighting(df)

        #for h, hist in list(self.histograms.items()):
        #    for region in hist['region']:
        #        name = self.naming_schema(hist['name'], region)
        #        selec = self.passbut(df, hist['target'], region)
        #        output[name].fill(**{
        #            'weight': weight[selec],
        #            name: df[hist['target']][selec]#.flatten()
        #        })

        #return 

    #def postprocess(self, accumulator):
    #    return accumulator

    #def passbut(self, event: LazyDataFrame, excut: str, cat: str):
    #    """Backwards-compatible passbut."""
    #    return eval('&'.join('(' + cut.format(sys=('' if self.weight_syst else self.syst_suffix)) + ')' for cut in self.selection[cat] ))#if excut not in cut))

#class SUEP_cluster(WSProducer):
#    histograms = {
#        'h_nCleaned_Cands': {
#            'target': 'nCleaned_Cands',
#            'name': 'nCleaned_Cands',  # name to write to histogram
#            'region': ['basic_HT','HT_base_500','HT_base', 'HT_500', 'HT_1000', 'HT_1200', 'HT_1500', 'HT_2000', 'HT_2500', 'HT_3000', 'HT_3500', 'HT_4000','HT_4500','HT_5000','HT_6000'],
#            'axis': {'label': 'nCleaned_Cands', 'n_or_arr': 500, 'lo': 0, 'hi': 500}
#        },
#    }
#    selection = {
#            "basic" : [
#                "event.nCleaned_Cands{sys} > 0",
#                "event.HT{sys} > 1000"
#                #"event.met_filter{sys}==1" ,
#                #"(event.HLT_PFHT1050{sys}==1) | (event.HLT_PFJet500{sys}==1)",
#            ],
#        }
#
#
#    def weighting(self, event: LazyDataFrame):
#        weight = 1.0
#        try:
#            weight = event.xsecscale
#        except:
#            return "ERROR: weight branch doesn't exist"
#        return weight
#
#    def naming_schema(self, name, region):
#        return f'{name}_{self.sample}_{region}{self.syst_suffix}'
