# SUEP Coffea
SUEP analysis using [Coffea](https://coffeateam.github.io/coffea/)

## Quick start
```bash
cmsrel CMSSW_10_6_4
cd CMSSW_10_6_4/src
cmsenv

git clone https://github.com/SUEPPhysics/SUEPCoffea.git
```

## to run the producer

```bash
python3 condor_SUEP_WS.py --isMC=0/1 --era=201X --infile=XXX.root
```

## To run on many files
```bash
To be set up
```
## to merge the output
```bash
To be set up
```

## Requirements

- Python 3
- uproot
- coffea
- HTCondor cluster

