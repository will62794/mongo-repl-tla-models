#!/bin/sh

#
# Check a model in this directory.
#

workers=$1
model=$2
spec=$3
echo "Running model: $model, with spec: $spec, workers=$workers"
java tlc2.TLC -workers $workers -config $model $spec 
rm -rf states
