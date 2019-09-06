#!/bin/sh

#
# Check a model in this directory and save output.
#


workers=$1
model=$2
spec=$3
resultdir="results"
mkdir -p $resultdir
echo "Running model: $model, with spec: $spec, workers=$workers"
java tlc2.TLC -workers $workers -config $model $spec > "$resultdir/$model.out"
rm -rf states
