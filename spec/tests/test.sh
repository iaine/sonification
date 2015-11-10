#!/bin/bash

chuck --loop &

SRC="/Users/iainemsley/Documents/git/sonification/src/"

echo `chuck + Assert.ck $SRC$1 $2`

echo "Killing Chuck processes"

PID=`pgrep -l chuck | awk '{print $1}'`
kill $PID
