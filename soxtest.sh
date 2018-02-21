#!/bin/sh
INC=0
mkdir processed_files
for f in $@
do
  INC=`expr $INC + 1`
  pinc=`printf "%03d" $INC`
  pinc=$pinc"_"
  sox $f "./processed_files/$pinc.wav" silence 1 0.1 0.01% 1 0.1 0.01% remix 1 2 : newfile : restart
done
find ./processed_files -name "*.wav" -size -60c -delete
