import awkward as ak
import numpy as np
import fastjet
import uproot
from coffea import hist, processor
import vector
vector.register_awkward()
#const = [
#        [
#            [{"px": 1.2, "py": 3.2, "pz": 5.4, "E": 2.5, "ex": 0.78}],
#            [
#                {"px": 32.2, "py": 64.21, "pz": 543.34, "E": 24.12, "ex": 0.35},
#                {"px": 32.45, "py": 63.21, "pz": 543.14, "E": 24.56, "ex": 0.0},
#                {"px": 32.45, "py": 63.21, "pz": 543.14, "E": 24.56, "ex": 0.0},
#            ],
#        ],
#        [
#            [
#                {"px": 132.2, "py": 164.21, "pz": 1543.34, "E": 124.12, "ex": 10.35},
#                {"px": 132.45, "py": 163.21, "pz": 1543.14, "E": 124.56, "ex": 10.0},
#            ],
#            [{"px": 11.2, "py": 13.2, "pz": 15.4, "E": 12.5, "ex": 10.78}],
#
#        ],
#]

const = ak.Array(
    [
        [
            {"px": 1.2, "py": 3.2, "pz": 5.4, "E": 2.5, "ex": 0.78},
            {"px": 32.2, "py": 64.21, "pz": 543.34, "E": 24.12, "ex": 0.35},
            {"px": 32.45, "py": 63.21, "pz": 543.14, "E": 24.56, "ex": 0.0},
        ],
        [
            {"px": 1.2, "py": 3.2, "pz": 5.4, "E": 2.5, "ex": 0.78},
            {"px": 32.2, "py": 64.21, "pz": 543.34, "E": 24.12, "ex": 0.35},
            {"px": 32.45, "py": 63.21, "pz": 543.14, "E": 24.56, "ex": 0.0},
        ],
    ],
    with_name="Momentum4D",
)

#const = ak.Array(const, with_name="Momentum4D")

print(const)

jetdef = fastjet.JetDefinition(fastjet.antikt_algorithm, 0.6)
cluster = fastjet.ClusterSequence(const, jetdef)

inclusive_jets = ak.with_name(cluster.inclusive_jets(), "Momentum4D")

print(inclusive_jets.eta)
