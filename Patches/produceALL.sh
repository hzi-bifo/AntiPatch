
#outDir="testresults"
#mkdir -p $outDir
#siteAss=AntiPatch/tools/siteAssignment.py
#outResidues=$outDir/allSelectedResidues.dat
#outPatchList=$outDir/allPatches.dat

# get antipatch
#if [ ! -f antipatch ]; then make; fi;

#treeMode="intExt"
normMode="allVals"
surfMode="surfcOnly"
surfacedata="testdata/3hmg"
pdb="testdata/3HMG.pdb"
onlyPyList="-k false -m false -y false"
inFile="testdata/oneValue.onlyInternal"
stop="1.1"
surfOption="false"

name="3HMG"
echo "=========== 3HMG (default) ======================================"
pdb="testdata/3HMG.pdb"
./antipatch -n $outDir/$name -g $inFile -z $stop -r $name -u $surfOption -s $surfacedata -b $pdb -c "A"  -p 1 -k true 

name="3ZTJ"
echo "=========== 3ZTJ ================================================"
pdb="evaluationdata/3ZTJ.pdb"
./antipatch -n $outDir/$name -g $inFile -z $stop -r $name -u $surfOption -s $surfacedata -b $pdb -c "A"  -p 1 -k true 

name="2YP7"
echo "=========== 2YP7 ================================================"
pdb="evaluationdata/2YP7.pdb"
./antipatch -n $outDir/$name -g $inFile -z $stop -r $name -u $surfOption -s $surfacedata -b $pdb -c "A"  -p 1 -k true 

name="1QFU"
echo "=========== 1QFU ================================================"
pdb="evaluationdata/1QFU.pdb"
./antipatch -n $outDir/$name -g $inFile -z $stop -r $name -u $surfOption -s $surfacedata -b $pdb -c "A"  -p 1 -k true 

name="phyreInference"
echo "=========== phyreInference ================================================"
pdb="evaluationdata/phyreInference.pdb"
./antipatch -n $outDir/$name -g $inFile -z $stop -r $name -u $surfOption -s $surfacedata -b $pdb -c "A"  -p 1 -k true 
