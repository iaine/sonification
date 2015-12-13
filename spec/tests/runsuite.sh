#!/bin/bash

############################
#
#  Script to run all the unit tests
#
############################

TESTS=(Config Exception File Log Play Rules Socket)

for TEST in "${TESTS[@]}"
do
    ./test.sh ${TEST}
done
