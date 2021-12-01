python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/DYJetsToLL_M-10to50_TuneCUETP8M1_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root DYJetsToLL_M-10to50_WS_selections.root
echo "finished DYJetsToLL_M-10to50_TuneCUETP8M1_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/DYToLL_0J_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root DYToLL_0J_WS_selections.root
echo "finished DYToLL_0J_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/DYToLL_1J_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root DYToLL_1J_WS_selections.root
echo "finished DYToLL_1J_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/DYToLL_2J_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root DYToLL_2J_WS_selections.root
echo "finished DYToLL_2J_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/GluGluHToBB_M125_13TeV_amcatnloFXFX_pythia8.root
mv tree_1_WS.root GluGluHToBB_WS_selections.root
echo "finished GluGluHToBB_M125_13TeV_amcatnloFXFX_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/GluGluHToWWTo2L2Nu_M125_13TeV_powheg_pythia8.root
mv tree_1_WS.root GluGluHToWWTo2L2Nu_WS_selections.root
echo "finished GluGluHToWWTo2L2Nu_M125_13TeV_powheg_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/GluGluHToZZTo4L_M125_13TeV_powheg2_JHUgenV6_pythia8.root
mv tree_1_WS.root GluGluHToZZTo4L_WS_selections.root
echo "finished GluGluHToZZTo4L_M125_13TeV_powheg2_JHUgenV6_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/GluGluZH_HToWW_M125_13TeV_powheg_pythia8.root
mv tree_1_WS.root GluGluZH_HToWW_WS_selections.root
echo "finished GluGluZH_HToWW_M125_13TeV_powheg_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-1000toInf_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-1000toInf_MuEnrichedPt5_WS_selections.root
echo "finished QCD_Pt-1000toInf_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-120to170_EMEnriched_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-120to170_EMEnriched_WS_selections.root
echo "finished QCD_Pt-120to170_EMEnriched_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-120to170_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-120to170_MuEnrichedPt5_WS_selections.root
echo "finished QCD_Pt-120to170_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-15to20_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-15to20_MuEnrichedPt5_WS_selections.root
echo "finished QCD_Pt-15to20_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-170to300_EMEnriched_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-170to300_EMEnriched_WS_selections.root
echo "finished QCD_Pt-170to300_EMEnriched_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-170to300_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-170to300_MuEnrichedPt5_WS_selections.root
echo "finished QCD_Pt-170to300_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-20to30_EMEnriched_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-20to30_EMEnriched_WS_selections.root
echo "finished QCD_Pt-20to30_EMEnriched_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-20to30_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-20to30_MuEnrichedPt5_WS_selections.root
echo "finished QCD_Pt-20to30_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-300to470_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-300to470_MuEnrichedPt5_WS_selections.root
echo "finished QCD_Pt-300to470_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-300toInf_EMEnriched_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-300toInf_EMEnriched_WS_selections.root
echo "finished QCD_Pt-300toInf_EMEnriched_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-30to50_EMEnriched_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-30to50_EMEnriched_WS_selections.root
echo "finished QCD_Pt-30to50_EMEnriched_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-30to50_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-30to50_MuEnrichedPt5_WS_selections.root
echo "finished QCD_Pt-30to50_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-470to600_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-470to600_MuEnrichedPt5_WS_selections.root
echo "finished QCD_Pt-470to600_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-50to80_EMEnriched_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-50to80_EMEnriched_WS_selections.root
echo "finished QCD_Pt-50to80_EMEnriched_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-50to80_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-50to80_MuEnrichedPt5_WS_selections.root
echo "finished QCD_Pt-50to80_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-600to800_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-600to800_MuEnrichedPt5_WS_selections.root
echo "finished QCD_Pt-600to800_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-800to1000_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-800to1000_MuEnrichedPt5_WS_selections.root
echo "finished QCD_Pt-800to1000_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-80to120_EMEnriched_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-80to120_EMEnriched_WS_selections.root
echo "finished QCD_Pt-80to120_EMEnriched_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/QCD_Pt-80to120_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root
mv tree_1_WS.root QCD_Pt-80to120_MuEnrichedPt5_WS_selections.root
echo "finished QCD_Pt-80to120_MuEnrichedPt5_TuneCUETP8M1_13TeV_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/ST_s-channel_4f_InclusiveDecays_13TeV-amcatnlo-pythia8.root
mv tree_1_WS.root ST_s-channel_4f_InclusiveDecays_WS_selections.root
echo "finished ST_s-channel_4f_InclusiveDecays_13TeV-amcatnlo-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/ST_t-channel_antitop_4f_InclusiveDecays_TuneCP5_PSweights_13TeV-powheg-pythia8.root
mv tree_1_WS.root ST_t-channel_antitop_4f_WS_selections.root
echo "finished ST_t-channel_antitop_4f_InclusiveDecays_TuneCP5_PSweights_13TeV-powheg-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/ST_t-channel_top_4f_InclusiveDecays_TuneCP5_PSweights_13TeV-powheg-pythia8.root
mv tree_1_WS.root ST_t-channel_top_4f_WS_selections.root
echo "finished ST_t-channel_top_4f_InclusiveDecays_TuneCP5_PSweights_13TeV-powheg-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/ST_tW_antitop_5f_inclusiveDecays_13TeV-powheg-pythia8_TuneCUETP8M1.root
mv tree_1_WS.root ST_tW_antitop_5f_WS_selections.root
echo "finished ST_tW_antitop_5f_inclusiveDecays_13TeV-powheg-pythia8_TuneCUETP8M1.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/ST_tW_top_5f_inclusiveDecays_13TeV-powheg-pythia8_TuneCUETP8M1.root
mv tree_1_WS.root ST_tW_top_5f_WS_selections.root
echo "finished ST_tW_top_5f_inclusiveDecays_13TeV-powheg-pythia8_TuneCUETP8M1.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/TTWJetsToLNu_TuneCUETP8M1_13TeV-amcatnloFXFX-madspin-pythia8.root
mv tree_1_WS.root TTWJetsToLNu_WS_selections.root
echo "finished TTWJetsToLNu_TuneCUETP8M1_13TeV-amcatnloFXFX-madspin-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/TTWJetsToQQ_TuneCUETP8M1_13TeV-amcatnloFXFX-madspin-pythia8.root
mv tree_1_WS.root TTWJetsToQQ_WS_selections.root
echo "finished TTWJetsToQQ_TuneCUETP8M1_13TeV-amcatnloFXFX-madspin-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/TTZToLLNuNu_M-10_TuneCUETP8M1_13TeV-amcatnlo-pythia8.root
mv tree_1_WS.root TTZToLLNuNu_WS_selections.root
echo "finished TTZToLLNuNu_M-10_TuneCUETP8M1_13TeV-amcatnlo-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/TTZToQQ_TuneCUETP8M1_13TeV-amcatnlo-pythia8.root
mv tree_1_WS.root TTZToQQ_WS_selections.root
echo "finished TTZToQQ_TuneCUETP8M1_13TeV-amcatnlo-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/TT_TuneCUETP8M2T4_13TeV-powheg-pythia8.root
mv tree_1_WS.root TT_WS_selections.root
echo "finished TT_TuneCUETP8M2T4_13TeV-powheg-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/VBFHToBB_M-125_13TeV_powheg_pythia8_weightfix.root
mv tree_1_WS.root VBFHToBB_WS_selections.root
echo "finished VBFHToBB_M-125_13TeV_powheg_pythia8_weightfix.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/VBFHToWWTo2L2Nu_M125_13TeV_powheg_pythia8.root
mv tree_1_WS.root VBFHToWWTo2L2Nu_WS_selections.root
echo "finished VBFHToWWTo2L2Nu_M125_13TeV_powheg_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/VBF_HToZZTo4L_M125_13TeV_powheg2_JHUgenV6_pythia8.root
mv tree_1_WS.root VBF_HToZZTo4L_WS_selections.root
echo "finished VBF_HToZZTo4L_M125_13TeV_powheg2_JHUgenV6_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/VVTo2L2Nu_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root VVTo2L2Nu_WS_selections.root
echo "finished VVTo2L2Nu_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/WH_HToBB_WToLNu_M125_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root WH_HToBB_WToLNu_WS_selections.root
echo "finished WH_HToBB_WToLNu_M125_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/WToLNu_0J_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root WToLNu_0J_WS_selections.root
echo "finished WToLNu_0J_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/WToLNu_1J_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root WToLNu_1J_WS_selections.root
echo "finished WToLNu_1J_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/WToLNu_2J_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root WToLNu_2J_WS_selections.root
echo "finished WToLNu_2J_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/WWTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root WWTo1L1Nu2Q_WS_selections.root
echo "finished WWTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/WWTo4Q_4f_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root WWTo4Q_4f_WS_selections.root
echo "finished WWTo4Q_4f_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/WZTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root WZTo1L1Nu2Q_WS_selections.root
echo "finished WZTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/WZTo1L3Nu_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root WZTo1L3Nu_WS_selections.root
echo "finished WZTo1L3Nu_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/WZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root WZTo2L2Q_WS_selections.root
echo "finished WZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/WZTo2Q2Nu_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root WZTo2Q2Nu_WS_selections.root
echo "finished WZTo2Q2Nu_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/WZTo3LNu_TuneCUETP8M1_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root WZTo3LNu_WS_selections.root
echo "finished WZTo3LNu_TuneCUETP8M1_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/WminusH_HToZZTo4L_M125_13TeV_powheg2-minlo-HWJ_JHUgenV6_pythia8.root
mv tree_1_WS.root WminusH_HToZZTo4L_WS_selections.root
echo "finished WminusH_HToZZTo4L_M125_13TeV_powheg2-minlo-HWJ_JHUgenV6_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/WplusH_HToZZTo4L_M125_13TeV_powheg2-minlo-HWJ_JHUgenV6_pythia8.root
mv tree_1_WS.root WplusH_HToZZTo4L_WS_selections.root
echo "finished WplusH_HToZZTo4L_M125_13TeV_powheg2-minlo-HWJ_JHUgenV6_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/ZH_HToBB_ZToLL_M125_13TeV_powheg_pythia8.root
mv tree_1_WS.root ZH_HToBB_ZToLL_WS_selections.root
echo "finished ZH_HToBB_ZToLL_M125_13TeV_powheg_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/ZZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root ZZTo2L2Q_13TeV_WS_selections.root
echo "finished ZZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/ZZTo2Q2Nu_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root ZZTo2Q2Nu_WS_selections.root
echo "finished ZZTo2Q2Nu_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/ZZTo4L_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root ZZTo4L_WS_selections.root
echo "finished ZZTo4L_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/ZZTo4Q_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root ZZTo4Q_WS_selections.root
echo "finished ZZTo4Q_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/ggZH_HToBB_ZToLL_M125_13TeV_powheg_pythia8.root
mv tree_1_WS.root ggZH_HToBB_ZToLL_WS_selections.root
echo "finished ggZH_HToBB_ZToLL_M125_13TeV_powheg_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/ttHJetToNonbb_M125_13TeV_amcatnloFXFX_madspin_pythia8_mWCutfix.root
mv tree_1_WS.root ttHJetToNonbb_WS_selections.root
echo "finished ttHJetToNonbb_M125_13TeV_amcatnloFXFX_madspin_pythia8_mWCutfix.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/ttHJetTobb_M125_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root ttHJetTobb_WS_selections.root
echo "finished ttHJetTobb_M125_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/ttHToNonbb_M125_TuneCP5_13TeV-powheg-pythia8.root
mv tree_1_WS.root ttHToNonbb_WS_selections.root
echo "finished ttHToNonbb_M125_TuneCP5_13TeV-powheg-pythia8.root"

python3 condor_HH_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/jlidrych/2016/ttHTobb_M125_TuneCP5_13TeV-powheg-pythia8.root
mv tree_1_WS.root ttHTobb_WS_selections.root
echo "finished ttHTobb_M125_TuneCP5_13TeV-powheg-pythia8.root"
