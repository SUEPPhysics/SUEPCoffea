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

If you do not have the requirements set up then you can also run this through the docker container that the coffea team provides. This is simple and easy to do. You just need to enter the Singularity and then issue the command above. To do this use:

```bash
singularity shell -B ${PWD}:/work /cvmfs/unpacked.cern.ch/registry.hub.docker.com/coffeateam/coffea-dask:latest
```

If there are files in other folders that are necessary (The folder with your NTuples for example) you can bind additional folders like with the following which will allow one to access the files in the /mnt directory:

```bash
export SINGULARITY_BIND="/mnt"
```

## To run on many files
```bash
To be set up
```
## to merge the output

Once everything is run we will want to merge all the output files into a single file per sample. This can be done with the merger.py file. Simply update the directory names at the top of this file and then run it:

```bash
python merger.py
```

## Requirements

- Python 3
- uproot
- coffea
- HTCondor cluster

