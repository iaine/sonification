#!/bin/bash

chuck --loop &

chuck + Assert.ck $1 $2

echo "Killing Chuck processes"

PID=`pgrep -l chuck | awk '{print $1}'`
kill $PID
