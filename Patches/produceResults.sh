surfMode="surfcOnly"
surfacedata="testdata/3hmg"
pdb="testdata/3HMG.pdb"
inFile="testdata/oneValue.onlyInternal"
stop="1.1"
surfOption="false"

./antipatch -g $inFile -z $stop -u $surfOption -s $surfacedata -b $pdb -c "A"  -p 1 -k true 
