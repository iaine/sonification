#!/bin/bash
##############
#
# Function to run a test script
#
##############

SRC="../../src/"

chuck Assert.ck ${SRC}$1.ck ../mock/Mock${1}.ck $1Test.ck

#echo "Killing Chuck processes"

#PID=`pgrep -l chuck | awk '{print $1}'`
#kill $PID
