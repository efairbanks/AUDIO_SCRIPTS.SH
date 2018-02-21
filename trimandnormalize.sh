#!/bin/bash

WAV_IN=$1
WAV_OUT=$2

sox $WAV_IN $WAV_OUT silence 1 0.1 0.01% 1 0.1 0.01% remix 1 2 norm -1
