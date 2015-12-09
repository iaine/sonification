#!/bin/bash

####################
#
#  Script to run Behave
#
#  If an argument is given, it runs that file or
#  run all Behave tests
#
#####################

FILE=$1

behave ${FILE}
