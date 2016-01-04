#!/bin/bash

TYPE=$1

if [ "$TYPE" == "entropy" ] 
then
   chuck ../src/Log.ck ../src/File.ck ../src/Play.ck  fent.ck:data.txt
elif [ "$TYPE" == "entropyrules" ] 
then
   chuck ../src/Rules.ck EntRules.ck ../src/Log.ck ../src/File.ck ../src/Play.ck  fentrules.ck:data.txt
else
   echo "$1 not supported. "
fi
