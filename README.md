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

## Manually control condor jobs rather than Dask

The kraken_run.py file which will submit Condor jobs for all the files in specified datasets. This submission currenty uses xrdfs to find the files stored on Kraken. An example submission can be seen below:

```
python kraken_run.py --isMC=1 --era=2018 --tag=<tag name> --input=filelist/list_2018_MC.txt 
```
The submission will name a directory in the output directory after the tage name you input. If the tag already exists use the ```--force``` option if you are trying to resubmit/overwrite.

Note that this submission will look for the dataset xsec in xsections_<era>.yaml.
  


