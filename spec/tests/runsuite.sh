#!/bin/bash

############################
#
#  Script to run all the unit tests
#
############################

TESTS=(Config Exception File Log Play Rules Socket)

WORKSPACE=$(pwd)

for TEST in "${TESTS[@]}"
do
    ${WORKSPACE}/spec/tests/test.sh ${TEST}
done
