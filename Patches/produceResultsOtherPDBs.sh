
outDir="testresults"
mkdir -p $outDir
siteAss=AntiPatch/tools/siteAssignment.py
outResidues=$outDir/allSelectedResidues.dat
outPatchList=$outDir/allPatches.dat

# get antipatch
if [ ! -f antipatch ]; then make; fi;

treeMode="intExt"
normMode="allVals"
surfMode="surfcOnly"
surfacedata="testdata/3hmg"
onlyPyList="-k false -m false -y false"
inFile="testdata/oneValue.onlyInternal"
stop="1.1"

echo ""

echo "=========== (default, surfaceOnly) ======================================"

pdb="testdata/3HMG.pdb"
surfOption="true"
name="surfaceOnly"

./antipatch -n $outDir/$name -g $inFile -z $stop -r $name -u $surfOption -s $surfacedata -b $pdb -c "A" -p 1 -k true
echo -e "--------------------------------------\n\t\t\t$name\n--------------------------------------" > $outPatchList
python $siteAss `cat $outDir/$name.pythonList` >> $outPatchList

echo "=========== (default, surfNBurr) ======================================"

pdb="testdata/3HMG.pdb"
surfOption="false"
name="surfaceAndBurried"

./antipatch -n $outDir/$name -g $inFile -z $stop -r $name -u $surfOption -s $surfacedata -b $pdb -c "E"  -p 1 -k true
echo -e "\n\n--------------------------------------\n\t\t\t$name\n--------------------------------------" >> $outPatchList
python $siteAss `cat $outDir/$name.pythonList` >> $outPatchList
echo "> done;"


echo "=========== (with AB, at HA2) ======================================"

pdb="testdata/3ZTJ.pdb"
surfOption="false"
name="surfaceAndBurried"

./antipatch -n $outDir/$name -g $inFile -z $stop -r $name -u $surfOption -s $surfacedata -b $pdb -c "E"  -p 1 -k true
echo -e "\n\n--------------------------------------\n\t\t\t$name\n--------------------------------------" >> $outPatchList
python $siteAss `cat $outDir/$name.pythonList` >> $outPatchList
echo "> done;"

echo "===================================================================="

pdb="testdata/2YP7.pdb"
surfOption="false"
name="surfaceAndBurried"

./antipatch -n $outDir/$name -g $inFile -z $stop -r $name -u $surfOption -s $surfacedata -b $pdb -c "A"  -p 1 -k true
echo -e "\n\n--------------------------------------\n\t\t\t$name\n--------------------------------------" >> $outPatchList
python $siteAss `cat $outDir/$name.pythonList` >> $outPatchList
echo "> done;"


echo "===================================================================="

pdb="testdata/1QFU.pdb"
surfOption="false"
name="surfaceAndBurried"

./antipatch -n $outDir/$name -g $inFile -z $stop -r $name -u $surfOption -s $surfacedata -b $pdb -c "A"  -p 1 -k true
echo -e "\n\n--------------------------------------\n\t\t\t$name\n--------------------------------------" >> $outPatchList
python $siteAss `cat $outDir/$name.pythonList` >> $outPatchList
echo "> done;"

echo "===================================================================="
echo ""


echo "===================================================================="

pdb="testdata/phyreInference.pdb"
surfOption="false"
name="surfaceAndBurried"

./antipatch -n $outDir/$name -g $inFile -z $stop -r $name -u $surfOption -s $surfacedata -b $pdb -c "A"  -p 1 -k true
echo -e "\n\n--------------------------------------\n\t\t\t$name\n--------------------------------------" >> $outPatchList
python $siteAss `cat $outDir/$name.pythonList` >> $outPatchList
echo "> done;"

echo "===================================================================="
echo ""

echo ""
