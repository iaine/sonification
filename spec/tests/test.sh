#!/bin/bash
##############
#
# Function to run a test script
#
##############

SRC="../../src/"
echo $SRC$1;
chuck Assert.ck ${SRC}$1 $1Test.ck

#echo "Killing Chuck processes"

#PID=`pgrep -l chuck | awk '{print $1}'`
#kill $PID
