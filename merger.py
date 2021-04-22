import os, glob
from array import array
import sys
import ROOT
from termcolor import colored

ROOT.gErrorIgnoreLevel = ROOT.kInfo + 1


indir = "/eos/cms/store/group/phys_exotica/monoZ/LionKing2017"
outdir = "/eos/cms/store/group/phys_exotica/monoZ/LionKing2017/merged2017"

keep_branches = [
    "weight", "xsecscale"
]

def zeroFill(tree,brName,brObj) :
    if brObj.GetLeaf(brName).GetTypeName() != "Bool_t" :
        print "Did not expect to back fill non-boolean branches",tree,brName,brObj.GetLeaf(br).GetTypeName()
    else :
        buff=array('B',[0])
        b=tree.Branch(brName,buff,brName+"/O")
        b.SetBasketSize(tree.GetEntries()*2) #be sure we do not trigger flushing
        for x in xrange(0,tree.GetEntries()):
            b.Fill()
        b.ResetAddress()

def deleteBranches(tree, remove_list):
    tree.SetBranchStatus("*",1)
    for br in remove_list:
        tree.SetBranchStatus(br, 0)

def haddnano(ofname, files):
    fileHandles=[]
    goFast=True
    # handeling input files
    for fn in files :
        print "Adding file",fn
        fileHandles.append(ROOT.TFile.Open(fn))
        if fileHandles[-1].GetCompressionSettings() != fileHandles[0].GetCompressionSettings() :
            goFast=False
            print "Disabling fast merging as inputs have different compressions"
    of=ROOT.TFile(ofname,"recreate")
    # checking compression
    if goFast :
        of.SetCompressionSettings(
            fileHandles[0].GetCompressionSettings()
        )
    of.cd()
    if len(fileHandles) == 0:
        print colored("directory empty ! skipping .. ", "red")
        return
    # merging
    for e in fileHandles[0].GetListOfKeys() :
        name=e.GetName()
        obj=e.ReadObj()
        cl=ROOT.TClass.GetClass(e.GetClassName())
        inputs=ROOT.TList()
        isTree= obj.IsA().InheritsFrom(ROOT.TTree.Class())
        remove_list = []
        if isTree :
            b_names=set([x.GetName() for x in obj.GetListOfBranches()])
            if obj.GetName() == "Events":
                remove_list = list(set(b_names) - set(keep_branches))
                deleteBranches(obj, remove_list)
                obj=obj.CloneTree(-1,"fast" if goFast else "")
            else:
                obj=obj.CloneTree(-1,"fast" if goFast else "")

        for fh in fileHandles[1:]:
            other_obj=fh.GetListOfKeys().FindObject(name).ReadObj()
            inputs.Add(other_obj)
            if isTree and obj.GetName()=='Events':
                other_obj.SetAutoFlush(0)
                deleteBranches(other_obj, remove_list)
            if isTree:
                obj.Merge(inputs, "fast" if goFast else "")
                inputs.Clear()
        if isTree:
            obj.Write()
        elif obj.IsA().InheritsFrom(ROOT.TH1.Class()) :
            obj.Merge(inputs)
            obj.Write()
        elif obj.IsA().InheritsFrom(ROOT.TObjString.Class()) :
            for st in inputs:
                if  st.GetString()!=obj.GetString():
                    print "Strings are not matching"
            obj.Write()
        else:
            print "Cannot handle ", obj.IsA().GetName()




def main():
    pattern = "WZ"
    for sample in os.listdir(indir):
        print colored(" -- " + sample, "blue")
        if "merged" in sample:
            continue
        if pattern not in sample:
            continue
        in_files = glob.glob("{indir}/{sample}/*.root".format(sample=sample, indir=indir))
        out_file = "{outdir}/{sample}.root".format(sample=sample, outdir=outdir)
        if len(in_files) == 0:
            print colored(" -- [warning] empty directory for " + sample, "red")
            continue
        haddnano(out_file, in_files)


if __name__ == "__main__":
   main()
