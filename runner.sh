python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/QCD_HT100to200_TuneCP5_13TeV-madgraphMLM-pythia8+RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1+MINIAODSIM.root
mv tree_1_WS.root QCD_HT100to200_WS_Wonder.root
echo "finished QCD_HT100to200"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/QCD_HT200to300_TuneCP5_13TeV-madgraphMLM-pythia8+RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1+MINIAODSIM.root
mv tree_1_WS.root QCD_HT200to300_WS_Wonder.root
echo "finished QCD_HT200to300"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/QCD_HT300to500_TuneCP5_13TeV-madgraphMLM-pythia8+RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1+MINIAODSIM.root
mv tree_1_WS.root QCD_HT300to500_WS_Wonder.root
echo "finished QCD_HT300to500"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/QCD_HT500to700_TuneCP5_13TeV-madgraphMLM-pythia8+RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1+MINIAODSIM.root
mv tree_1_WS.root QCD_HT500to700_WS_Wonder.root
echo "finished QCD_HT500to700"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/QCD_HT700to1000_TuneCP5_13TeV-madgraphMLM-pythia8+RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1+MINIAODSIM.root
mv tree_1_WS.root QCD_HT700to1000_WS_Wonder.root
echo "finished QCD_HT700to1000"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/QCD_HT1000to1500_TuneCP5_13TeV-madgraphMLM-pythia8+RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1+MINIAODSIM.root
mv tree_1_WS.root QCD_HT1000to1500_WS_Wonder.root
echo "finished QCD_HT1000to1500"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/QCD_HT1500to2000_TuneCP5_13TeV-madgraphMLM-pythia8+RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1+MINIAODSIM.root
mv tree_1_WS.root QCD_HT1500to2000_WS_Wonder.root
echo "finished QCD_HT1500to2000"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/QCD_HT2000toInf_TuneCP5_13TeV-madgraphMLM-pythia8+RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1+MINIAODSIM.root
mv tree_1_WS.root QCD_HT2000toinf_WS_Wonder.root
echo "finished QCD_HT2000toInf"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/SUEP-m125-darkPhoHad+RunIIAutumn18-private+MINIAODSIM.root
mv tree_1_WS.root SUEP-m125-darkPhoHad_WS_Wonder.root
echo "finished SUEP-m125-darkPhoHad"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/SUEP-m125-darkPho+RunIIAutumn18-private+MINIAODSIM.root
mv tree_1_WS.root SUEP-m125-darkPho_WS_Wonder.root
echo "finished SUEP-m125-darkPho"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/SUEP-m125-generic+RunIIAutumn18-private+MINIAODSIM.root
mv tree_1_WS.root SUEP-m125-generic_WS_Wonder.root
echo "finished SUEP-m125-generic"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/SUEP-m400-darkPhoHad+RunIIAutumn18-private+MINIAODSIM.root
mv tree_1_WS.root SUEP-m400-darkPhoHad_WS_Wonder.root
echo "finished SUEP-m400-darkPhoHad"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/SUEP-m400-darkPho+RunIIAutumn18-private+MINIAODSIM.root
mv tree_1_WS.root SUEP-m400-darkPho_WS_Wonder.root
echo "finished SUEP-m400-darkPho"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/SUEP-m400-generic+RunIIAutumn18-private+MINIAODSIM.root
mv tree_1_WS.root SUEP-m400-generic_WS_Wonder.root
echo "finished SUEP-m400-generic"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/SUEP-m750-darkPhoHad+RunIIAutumn18-private+MINIAODSIM.root
mv tree_1_WS.root SUEP-m750-darkPhoHad_WS_Wonder.root
echo "finished SUEP-m750-darkPhoHad"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/SUEP-m750-darkPho+RunIIAutumn18-private+MINIAODSIM.root
mv tree_1_WS.root SUEP-m750-darkPho_WS_Wonder.root
echo "finished SUEP-m750-darkPho"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/SUEP-m750-generic+RunIIAutumn18-private+MINIAODSIM.root
mv tree_1_WS.root SUEP-m750-generic_WS_Wonder.root
echo "finished SUEP-m750-generic"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/SUEP-m1000-darkPhoHad+RunIIAutumn18-private+MINIAODSIM.root
mv tree_1_WS.root SUEP-m1000-darkPhoHad_WS_Wonder.root
echo "finished SUEP-m1000-darkPhoHad"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/SUEP-m1000-darkPho+RunIIAutumn18-private+MINIAODSIM.root
mv tree_1_WS.root SUEP-m1000-darkPho_WS_Wonder.root
echo "finished SUEP-m1000-darkPho"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=/mnt/hadoop/scratch/freerc/SUEP/Wonderland/merged/SUEP-m1000-generic+RunIIAutumn18-private+MINIAODSIM.root
mv tree_1_WS.root SUEP-m1000-generic_WS_Wonder.root
echo "finished SUEP-m1000-generic"

cp *Wonderland_python.root /eos/cms/store/group/phys_exotica/monoZ/SUEP_Histos_WS/.
