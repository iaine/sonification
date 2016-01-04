#!/bin/bash

$TYPE=$1

if [ ${TYPE} == "entropy" ]; then
   echo "Running the plain entropy ChucK example"
   chuck ../src/Log.ck ../src/File.ck ../src/Play.ck  fent.ck:data.txt
else [ ${TYPE} == "entropyrules" ]; then
   chuck ../src/Rules.ck EntRules.ck ../src/Log.ck ../src/File.ck ../src/Play.ck  fentrules.ck:data.txt
fi
