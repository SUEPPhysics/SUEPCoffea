python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=QCD_HT100to200_merged.root
mv tree_1_WS.root QCD_HT100to200_WS_selections.root
echo "finished QCD_HT100to200"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=QCD_HT200to300_merged.root
mv tree_1_WS.root QCD_HT200to300_WS_selections.root
echo "finished QCD_HT200to300"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=QCD_HT300to500_merged.root
mv tree_1_WS.root QCD_HT300to500_WS_selections.root
echo "finished QCD_HT300to500"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=QCD_HT500to700_merged.root
mv tree_1_WS.root QCD_HT500to700_WS_selections.root
echo "finished QCD_HT500to700"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=QCD_HT700to1000_merged.root
mv tree_1_WS.root QCD_HT700to1000_WS_selections_python.root
echo "finished QCD_HT700to1000"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=QCD_HT1000to1500_merged.root
mv tree_1_WS.root QCD_HT1000to1500_WS_selections.root
echo "finished QCD_HT1000to1500"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=QCD_HT1500to2000_merged.root
mv tree_1_WS.root QCD_HT1500to2000_WS_selections.root
echo "finished QCD_HT1500to2000"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=QCD_HT2000toInf_merged.root
mv tree_1_WS.root QCD_HT2000toinf_WS_selections.root
echo "finished QCD_HT2000toInf"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=SUEP-m125-darkPhoHad_merged.root
mv tree_1_WS.root SUEP-m125-darkPhoHad_WS_selections.root
echo "finished SUEP-m125-darkPhoHad"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=SUEP-m125-darkPho_merged.root
mv tree_1_WS.root SUEP-m125-darkPho_WS_selections.root
echo "finished SUEP-m125-darkPho"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=SUEP-m125-generic_merged.root
mv tree_1_WS.root SUEP-m125-generic_WS_selections.root
echo "finished SUEP-m125-generic"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=SUEP-m400-darkPhoHad_merged.root
mv tree_1_WS.root SUEP-m400-darkPhoHad_WS_selections.root
echo "finished SUEP-m400-darkPhoHad"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=SUEP-m400-darkPho_merged.root
mv tree_1_WS.root SUEP-m400-darkPho_WS_selections.root
echo "finished SUEP-m400-darkPho"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=SUEP-m400-generic_merged.root
mv tree_1_WS.root SUEP-m400-generic_WS_selections.root
echo "finished SUEP-m400-generic"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=SUEP-m750-darkPhoHad_merged.root
mv tree_1_WS.root SUEP-m750-darkPhoHad_WS_selections.root
echo "finished SUEP-m750-darkPhoHad"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=SUEP-m750-darkPho_merged.root
mv tree_1_WS.root SUEP-m750-darkPho_WS_selections.root
echo "finished SUEP-m750-darkPho"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=SUEP-m750-generic_merged.root
mv tree_1_WS.root SUEP-m750-generic_WS_selections.root
echo "finished SUEP-m750-generic"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=SUEP-m1000-darkPhoHad_merged.root
mv tree_1_WS.root SUEP-m1000-darkPhoHad_WS_selections.root
echo "finished SUEP-m1000-darkPhoHad"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=SUEP-m1000-darkPho_merged.root
mv tree_1_WS.root SUEP-m1000-darkPho_WS_selections.root
echo "finished SUEP-m1000-darkPho"
python3 condor_SUEP_WS.py --isMC=1 --era=2018 --infile=SUEP-m1000-generic_merged.root
mv tree_1_WS.root SUEP-m1000-generic_WS_selections.root
echo "finished SUEP-m1000-generic"

cp *selections_python.root /eos/cms/store/group/phys_exotica/monoZ/SUEP_Histos_WS/.
