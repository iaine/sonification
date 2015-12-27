#!/bin/bash
##############
#
# Function to run a test script
#
##############

SRC="../../src/"

chuck Assert.ck ${SRC}File.ck ${SRC}Play.ck  ${SRC}$1 ${SRC}/Config.ck  Mock.ck $1Test.ck

#echo "Killing Chuck processes"

#PID=`pgrep -l chuck | awk '{print $1}'`
#kill $PID
