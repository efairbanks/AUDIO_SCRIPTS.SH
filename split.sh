#!/bin/bash

SEGMENTS=$1
WAV_IN=$2

EXT="${WAV_IN##*.}"
FILENAME="${WAV_IN%.*}"
LENGTH=`soxi -D $WAV_IN`
SEG_LEN=`echo "scale=7;$LENGTH/$SEGMENTS" | bc -l`

sox $WAV_IN $FILENAME%1n.$EXT trim 0 $SEG_LEN : newfile : restart
