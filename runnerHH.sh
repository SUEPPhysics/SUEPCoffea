python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DYJetsToLL_M-10to50_TuneCUETP8M1_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root DYJetsToLL_M-10to50_WS_selections.root
echo "finished DYJetsToLL_M-10to50_TuneCUETP8M1_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DYToLL_0J_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root DYToLL_0J_WS_selections.root
echo "finished DYToLL_0J_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DYToLL_1J_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root DYToLL_1J_WS_selections.root
echo "finished DYToLL_1J_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DYToLL_2J_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root DYToLL_2J_WS_selections.root
echo "finished DYToLL_2J_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluHToBB_M125_13TeV_amcatnloFXFX_pythia8.root
mv tree_1_WS.root GluGluHToBB_WS_selections.root
echo "finished GluGluHToBB_M125_13TeV_amcatnloFXFX_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluHToWWTo2L2Nu_M125_13TeV_powheg_pythia8.root
mv tree_1_WS.root GluGluHToWWTo2L2Nu_WS_selections.root
echo "finished GluGluHToWWTo2L2Nu_M125_13TeV_powheg_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluHToZZTo4L_M125_13TeV_powheg2_JHUgenV6_pythia8.root
mv tree_1_WS.root GluGluHToZZTo4L_WS_selections.root
echo "finished GluGluHToZZTo4L_M125_13TeV_powheg2_JHUgenV6_pythia8.root"

#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-1000_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-1000_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-1000_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-1250_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-1250_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-1250_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-1500_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-1500_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-1500_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-1750_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-1750_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-1750_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-2000_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-2000_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-2000_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-2500_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-2500_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-2500_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-260_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-260_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-260_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-270_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-270_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-270_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-3000_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-3000_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-3000_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-300_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-300_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-300_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-350_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-350_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-350_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-400_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-400_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-400_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-450_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-450_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-450_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-500_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-500_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-500_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-550_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-550_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-550_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-600_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-600_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-600_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-650_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-650_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-650_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-750_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-750_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-750_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-800_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-800_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-800_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-900_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-900_WS_selections.root
#echo "finished GluGluToBulkGravitonToHHTo2B2ZTo2L2J_M-900_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToHHTo2B2ZTo2L2J_node_10_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToHHTo2B2ZTo2L2J_node_10_WS_selections.root
#echo "finished GluGluToHHTo2B2ZTo2L2J_node_10_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToHHTo2B2ZTo2L2J_node_11_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToHHTo2B2ZTo2L2J_node_11_WS_selections.root
#echo "finished GluGluToHHTo2B2ZTo2L2J_node_11_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToHHTo2B2ZTo2L2J_node_12_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToHHTo2B2ZTo2L2J_node_12_WS_selections.root
#echo "finished GluGluToHHTo2B2ZTo2L2J_node_12_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToHHTo2B2ZTo2L2J_node_1_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToHHTo2B2ZTo2L2J_node_1_WS_selections.root
#echo "finished GluGluToHHTo2B2ZTo2L2J_node_1_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToHHTo2B2ZTo2L2J_node_2_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToHHTo2B2ZTo2L2J_node_2_WS_selections.root
#echo "finished GluGluToHHTo2B2ZTo2L2J_node_2_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToHHTo2B2ZTo2L2J_node_3_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToHHTo2B2ZTo2L2J_node_3_WS_selections.root
#echo "finished GluGluToHHTo2B2ZTo2L2J_node_3_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToHHTo2B2ZTo2L2J_node_4_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToHHTo2B2ZTo2L2J_node_4_WS_selections.root
#echo "finished GluGluToHHTo2B2ZTo2L2J_node_4_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToHHTo2B2ZTo2L2J_node_5_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToHHTo2B2ZTo2L2J_node_5_WS_selections.root
#echo "finished GluGluToHHTo2B2ZTo2L2J_node_5_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToHHTo2B2ZTo2L2J_node_6_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToHHTo2B2ZTo2L2J_node_6_WS_selections.root
#echo "finished GluGluToHHTo2B2ZTo2L2J_node_6_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToHHTo2B2ZTo2L2J_node_7_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToHHTo2B2ZTo2L2J_node_7_WS_selections.root
#echo "finished GluGluToHHTo2B2ZTo2L2J_node_7_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToHHTo2B2ZTo2L2J_node_8_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToHHTo2B2ZTo2L2J_node_8_WS_selections.root
#echo "finished GluGluToHHTo2B2ZTo2L2J_node_8_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToHHTo2B2ZTo2L2J_node_9_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToHHTo2B2ZTo2L2J_node_9_WS_selections.root
#echo "finished GluGluToHHTo2B2ZTo2L2J_node_9_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToHHTo2B2ZTo2L2J_node_SM_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToHHTo2B2ZTo2L2J_node_SM_WS_selections.root
#echo "finished GluGluToHHTo2B2ZTo2L2J_node_SM_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToHHTo2B2ZTo2L2J_node_cHHH0_TuneCUETP8M1_PSWeights_13TeV-powheg-pythia8.root
#mv tree_1_WS.root GluGluToHHTo2B2ZTo2L2J_node_cHHH0_WS_selections.root
#echo "finished GluGluToHHTo2B2ZTo2L2J_node_cHHH0_TuneCUETP8M1_PSWeights_13TeV-powheg-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToHHTo2B2ZTo2L2J_node_cHHH1_TuneCUETP8M1_PSWeights_13TeV-powheg-pythia8.root
#mv tree_1_WS.root GluGluToHHTo2B2ZTo2L2J_node_cHHH1_WS_selections.root
#echo "finished GluGluToHHTo2B2ZTo2L2J_node_cHHH1_TuneCUETP8M1_PSWeights_13TeV-powheg-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToHHTo2B2ZTo2L2J_node_cHHH2p45_TuneCUETP8M1_PSWeights_13TeV-powheg-pythia8.root
#mv tree_1_WS.root GluGluToHHTo2B2ZTo2L2J_node_cHHH2p45_WS_selections.root
#echo "finished GluGluToHHTo2B2ZTo2L2J_node_cHHH2p45_TuneCUETP8M1_PSWeights_13TeV-powheg-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToHHTo2B2ZTo2L2J_node_cHHH5_TuneCUETP8M1_PSWeights_13TeV-powheg-pythia8.root
#mv tree_1_WS.root GluGluToHHTo2B2ZTo2L2J_node_cHHH5_WS_selections.root
#echo "finished GluGluToHHTo2B2ZTo2L2J_node_cHHH5_TuneCUETP8M1_PSWeights_13TeV-powheg-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-1000_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-1000_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-1000_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-1250_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-1250_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-1250_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-1500_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-1500_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-1500_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-1750_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-1750_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-1750_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-2000_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-2000_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-2000_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-2500_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-2500_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-2500_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-260_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-260_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-260_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-270_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-270_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-270_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-3000_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-3000_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-3000_narrow_TuneCUETP8M1_PSWeights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-300_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-300_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-300_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-350_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-350_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-350_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-400_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-400_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-400_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-450_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-450_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-450_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-500_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-500_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-500_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-550_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-550_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-550_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-600_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-600_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-600_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-650_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-650_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-650_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-750_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-750_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-750_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-800_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-800_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-800_narrow_13TeV-madgraph-v2.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluToRadionToHHTo2B2ZTo2L2J_M-900_narrow_13TeV-madgraph-v2.root
#mv tree_1_WS.root GluGluToRadionToHHTo2B2ZTo2L2J_M-900_WS_selections.root
#echo "finished GluGluToRadionToHHTo2B2ZTo2L2J_M-900_narrow_13TeV-madgraph-v2.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/GluGluZH_HToWW_M125_13TeV_powheg_pythia8.root
mv tree_1_WS.root GluGluZH_HToWW_WS_selections.root
echo "finished GluGluZH_HToWW_M125_13TeV_powheg_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/ST_s-channel_4f_InclusiveDecays_13TeV-amcatnlo-pythia8.root
mv tree_1_WS.root ST_s-channel_4f_WS_selections.root
echo "finished ST_s-channel_4f_InclusiveDecays_13TeV-amcatnlo-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/ST_t-channel_antitop_4f_InclusiveDecays_TuneCP5_PSweights_13TeV-powheg-pythia8.root
mv tree_1_WS.root ST_t-channel_antitop_4f_WS_selections.root
echo "finished ST_t-channel_antitop_4f_InclusiveDecays_TuneCP5_PSweights_13TeV-powheg-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/ST_t-channel_top_4f_InclusiveDecays_TuneCP5_PSweights_13TeV-powheg-pythia8.root
mv tree_1_WS.root ST_t-channel_top_4f_WS_selections.root
echo "finished ST_t-channel_top_4f_InclusiveDecays_TuneCP5_PSweights_13TeV-powheg-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/ST_tW_antitop_5f_inclusiveDecays_13TeV-powheg-pythia8_TuneCUETP8M1.root
mv tree_1_WS.root ST_tW_antitop_5f_WS_selections.root
echo "finished ST_tW_antitop_5f_inclusiveDecays_13TeV-powheg-pythia8_TuneCUETP8M1.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/ST_tW_top_5f_inclusiveDecays_13TeV-powheg-pythia8_TuneCUETP8M1.root
mv tree_1_WS.root ST_tW_top_5f_WS_selections.root
echo "finished ST_tW_top_5f_inclusiveDecays_13TeV-powheg-pythia8_TuneCUETP8M1.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/TTWJetsToLNu_TuneCUETP8M1_13TeV-amcatnloFXFX-madspin-pythia8.root
mv tree_1_WS.root TTWJetsToLNu_WS_selections.root
echo "finished TTWJetsToLNu_TuneCUETP8M1_13TeV-amcatnloFXFX-madspin-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/TTWJetsToQQ_TuneCUETP8M1_13TeV-amcatnloFXFX-madspin-pythia8.root
mv tree_1_WS.root TTWJetsToQQ_WS_selections.root
echo "finished TTWJetsToQQ_TuneCUETP8M1_13TeV-amcatnloFXFX-madspin-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/TTZToLLNuNu_M-10_TuneCUETP8M1_13TeV-amcatnlo-pythia8.root
mv tree_1_WS.root TTZToLLNuNu_M-10_WS_selections.root
echo "finished TTZToLLNuNu_M-10_TuneCUETP8M1_13TeV-amcatnlo-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/TTZToQQ_TuneCUETP8M1_13TeV-amcatnlo-pythia8.root
mv tree_1_WS.root TTZToQQ_WS_selections.root
echo "finished TTZToQQ_TuneCUETP8M1_13TeV-amcatnlo-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/TT_TuneCUETP8M2T4_13TeV-powheg-pythia8.root
mv tree_1_WS.root TT_WS_selections.root
echo "finished TT_TuneCUETP8M2T4_13TeV-powheg-pythia8.root"

#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/VBFHHTo2B2ZTo2L2J_CV_1_5_C2V_1_C3_1_dipoleRecoilOff-TuneCUETP8M1_PSweights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root VBFHHTo2B2ZTo2L2J_CV_1_5_C2V_1_C3_1_WS_selections.root
#echo "finished VBFHHTo2B2ZTo2L2J_CV_1_5_C2V_1_C3_1_dipoleRecoilOff-TuneCUETP8M1_PSweights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/VBFHHTo2B2ZTo2L2J_CV_1_C2V_0_C3_1_dipoleRecoilOff-TuneCUETP8M1_PSweights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root VBFHHTo2B2ZTo2L2J_CV_1_C2V_0_C3_1_WS_selections.root
#echo "finished VBFHHTo2B2ZTo2L2J_CV_1_C2V_0_C3_1_dipoleRecoilOff-TuneCUETP8M1_PSweights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/VBFHHTo2B2ZTo2L2J_CV_1_C2V_1_C3_0_dipoleRecoilOff-TuneCUETP8M1_PSweights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root VBFHHTo2B2ZTo2L2J_CV_1_C2V_1_C3_0_WS_selections.root
#echo "finished VBFHHTo2B2ZTo2L2J_CV_1_C2V_1_C3_0_dipoleRecoilOff-TuneCUETP8M1_PSweights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/VBFHHTo2B2ZTo2L2J_CV_1_C2V_1_C3_1_dipoleRecoilOff-TuneCUETP8M1_PSweights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root VBFHHTo2B2ZTo2L2J_CV_1_C2V_1_C3_1_WS_selections.root
#echo "finished VBFHHTo2B2ZTo2L2J_CV_1_C2V_1_C3_1_dipoleRecoilOff-TuneCUETP8M1_PSweights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/VBFHHTo2B2ZTo2L2J_CV_1_C2V_1_C3_2_dipoleRecoilOff-TuneCUETP8M1_PSweights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root VBFHHTo2B2ZTo2L2J_CV_1_C2V_1_C3_2_WS_selections.root
#echo "finished VBFHHTo2B2ZTo2L2J_CV_1_C2V_1_C3_2_dipoleRecoilOff-TuneCUETP8M1_PSweights_13TeV-madgraph-pythia8.root"
#
#python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/VBFHHTo2B2ZTo2L2J_CV_1_C2V_2_C3_1_dipoleRecoilOff-TuneCUETP8M1_PSweights_13TeV-madgraph-pythia8.root
#mv tree_1_WS.root VBFHHTo2B2ZTo2L2J_CV_1_C2V_2_C3_1_WS_selections.root
#echo "finished VBFHHTo2B2ZTo2L2J_CV_1_C2V_2_C3_1_dipoleRecoilOff-TuneCUETP8M1_PSweights_13TeV-madgraph-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/VBFHToBB_M-125_13TeV_powheg_pythia8_weightfix.root
mv tree_1_WS.root VBFHToBB_WS_selections.root
echo "finished VBFHToBB_M-125_13TeV_powheg_pythia8_weightfix.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/VBFHToWWTo2L2Nu_M125_13TeV_powheg_pythia8.root
mv tree_1_WS.root VBFHToWWTo2L2Nu_WS_selections.root
echo "finished VBFHToWWTo2L2Nu_M125_13TeV_powheg_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/VBF_HToZZTo4L_M125_13TeV_powheg2_JHUgenV6_pythia8.root
mv tree_1_WS.root VBF_HToZZTo4L_WS_selections.root
echo "finished VBF_HToZZTo4L_M125_13TeV_powheg2_JHUgenV6_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/VVTo2L2Nu_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root VVTo2L2Nu_WS_selections.root
echo "finished VVTo2L2Nu_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/WH_HToBB_WToLNu_M125_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root WH_HToBB_WToLNu_WS_selections.root
echo "finished WH_HToBB_WToLNu_M125_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/WToLNu_0J_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root WToLNu_0J_WS_selections.root
echo "finished WToLNu_0J_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/WToLNu_1J_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root WToLNu_1J_WS_selections.root
echo "finished WToLNu_1J_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/WToLNu_2J_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root WToLNu_2J_WS_selections.root
echo "finished WToLNu_2J_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/WWTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root WWTo1L1Nu2Q_WS_selections.root
echo "finished WWTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/WWTo4Q_4f_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root WWTo4Q_4f_WS_selections.root
echo "finished WWTo4Q_4f_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/WZTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root WZTo1L1Nu2Q_WS_selections.root
echo "finished WZTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/WZTo1L3Nu_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root WZTo1L3Nu_WS_selections.root
echo "finished WZTo1L3Nu_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/WZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root WZTo2L2Q_WS_selections.root
echo "finished WZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/WZTo2Q2Nu_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root WZTo2Q2Nu_WS_selections.root
echo "finished WZTo2Q2Nu_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/WZTo3LNu_TuneCUETP8M1_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root WZTo3LNu_WS_selections.root
echo "finished WZTo3LNu_TuneCUETP8M1_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/WminusH_HToZZTo4L_M125_13TeV_powheg2-minlo-HWJ_JHUgenV6_pythia8.root
mv tree_1_WS.root WminusH_HToZZTo4L_WS_selections.root
echo "finished WminusH_HToZZTo4L_M125_13TeV_powheg2-minlo-HWJ_JHUgenV6_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/WplusH_HToZZTo4L_M125_13TeV_powheg2-minlo-HWJ_JHUgenV6_pythia8.root
mv tree_1_WS.root WplusH_HToZZTo4L_WS_selections.root
echo "finished WplusH_HToZZTo4L_M125_13TeV_powheg2-minlo-HWJ_JHUgenV6_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/ZH_HToBB_ZToLL_M125_13TeV_powheg_pythia8.root
mv tree_1_WS.root ZH_HToBB_ZToLL_WS_selections.root
echo "finished ZH_HToBB_ZToLL_M125_13TeV_powheg_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/ZZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root ZZTo2L2Q_WS_selections.root
echo "finished ZZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/ZZTo2Q2Nu_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root ZZTo2Q2Nu_WS_selections.root
echo "finished ZZTo2Q2Nu_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/ZZTo4L_13TeV-amcatnloFXFX-pythia8.root
mv tree_1_WS.root ZZTo4L_WS_selections.root
echo "finished ZZTo4L_13TeV-amcatnloFXFX-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/ZZTo4Q_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root ZZTo4Q_WS_selections.root
echo "finished ZZTo4Q_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/ggZH_HToBB_ZToLL_M125_13TeV_powheg_pythia8.root
mv tree_1_WS.root ggZH_HToBB_ZToLL_WS_selections.root
echo "finished ggZH_HToBB_ZToLL_M125_13TeV_powheg_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/ttHJetToNonbb_M125_13TeV_amcatnloFXFX_madspin_pythia8_mWCutfix.root
mv tree_1_WS.root ttHJetToNonbb_WS_selections.root
echo "finished ttHJetToNonbb_M125_13TeV_amcatnloFXFX_madspin_pythia8_mWCutfix.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/ttHJetTobb_M125_13TeV_amcatnloFXFX_madspin_pythia8.root
mv tree_1_WS.root ttHJetTobb_WS_selections.root
echo "finished ttHJetTobb_M125_13TeV_amcatnloFXFX_madspin_pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/ttHToNonbb_M125_TuneCP5_13TeV-powheg-pythia8.root
mv tree_1_WS.root ttHToNonbb_WS_selections.root
echo "finished ttHToNonbb_M125_TuneCP5_13TeV-powheg-pythia8.root"

python3 condor_SUEP_WS.py --isMC=1 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/ttHTobb_M125_TuneCP5_13TeV-powheg-pythia8.root
mv tree_1_WS.root ttHTobb_WS_selections.root
echo "finished ttHTobb_M125_TuneCP5_13TeV-powheg-pythia8.root"

python3 condor_SUEP_WS.py --isMC=0 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DoubleMuon_Run2016B-02Apr2020_ver2-v1.root
mv tree_1_WS.root DoubleMuon_Run2016B_WS_selections.root
echo "finished DoubleMuon_Run2016B-02Apr2020_ver2-v1.root"

python3 condor_SUEP_WS.py --isMC=0 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DoubleMuon_Run2016C-02Apr2020-v1.root
mv tree_1_WS.root DoubleMuon_Run2016C_WS_selections.root
echo "finished DoubleMuon_Run2016C-02Apr2020-v1.root"

python3 condor_SUEP_WS.py --isMC=0 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DoubleMuon_Run2016D-02Apr2020-v1.root
mv tree_1_WS.root DoubleMuon_Run2016D_WS_selections.root
echo "finished DoubleMuon_Run2016D-02Apr2020-v1.root"

python3 condor_SUEP_WS.py --isMC=0 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DoubleMuon_Run2016E-02Apr2020-v1.root
mv tree_1_WS.root DoubleMuon_Run2016E_WS_selections.root
echo "finished DoubleMuon_Run2016E-02Apr2020-v1.root"

python3 condor_SUEP_WS.py --isMC=0 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DoubleMuon_Run2016F-02Apr2020-v1.root
mv tree_1_WS.root DoubleMuon_Run2016F_WS_selections.root
echo "finished DoubleMuon_Run2016F-02Apr2020-v1.root"

python3 condor_SUEP_WS.py --isMC=0 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DoubleMuon_Run2016G-02Apr2020-v1.root
mv tree_1_WS.root DoubleMuon_Run2016G_WS_selections.root
echo "finished DoubleMuon_Run2016G-02Apr2020-v1.root"

python3 condor_SUEP_WS.py --isMC=0 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DoubleMuon_Run2016H-02Apr2020-v1.root
mv tree_1_WS.root DoubleMuon_Run2016H_WS_selections.root
echo "finished DoubleMuon_Run2016H-02Apr2020-v1.root"

python3 condor_SUEP_WS.py --isMC=0 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DoubleEG_Run2016B-02Apr2020_ver2-v1.root
mv tree_1_WS.root DoubleEG_Run2016B_WS_selections.root
echo "finished DoubleEG_Run2016B-02Apr2020_ver2-v1.root"

python3 condor_SUEP_WS.py --isMC=0 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DoubleEG_Run2016C-02Apr2020-v1.root
mv tree_1_WS.root DoubleEG_Run2016C_WS_selections.root
echo "finished DoubleEG_Run2016C-02Apr2020-v1.root"

python3 condor_SUEP_WS.py --isMC=0 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DoubleEG_Run2016D-02Apr2020-v1.root
mv tree_1_WS.root DoubleEG_Run2016D_WS_selections.root
echo "finished DoubleEG_Run2016D-02Apr2020-v1.root"

python3 condor_SUEP_WS.py --isMC=0 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DoubleEG_Run2016E-02Apr2020-v1.root
mv tree_1_WS.root DoubleEG_Run2016E_WS_selections.root
echo "finished DoubleEG_Run2016E-02Apr2020-v1.root"

python3 condor_SUEP_WS.py --isMC=0 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DoubleEG_Run2016F-02Apr2020-v1.root
mv tree_1_WS.root DoubleEG_Run2016F_WS_selections.root
echo "finished DoubleEG_Run2016F-02Apr2020-v1.root"

python3 condor_SUEP_WS.py --isMC=0 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DoubleEG_Run2016G-02Apr2020-v1.root
mv tree_1_WS.root DoubleEG_Run2016G_WS_selections.root
echo "finished DoubleEG_Run2016G-02Apr2020-v1.root"

python3 condor_SUEP_WS.py --isMC=0 --era=2016 --infile=/eos/cms/store/group/phys_higgs/HiggsExo/HH_bbZZ_bbllqq/test/neverhaveiever/merged/DoubleEG_Run2016H-02Apr2020-v1.root
mv tree_1_WS.root DoubleEG_Run2016H_WS_selections.root
echo "finished DoubleEG_Run2016H-02Apr2020-v1.root"









