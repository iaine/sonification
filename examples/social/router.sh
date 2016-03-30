#!/bin/bash

###############################
#
#  Router script for the Social experiment
#
#  Author: Iain Emsley
#
###############################

MEDIA=$1
SRC="/home/iain/git/sonification/src/"
EXAMPLES="/home/iain/git/sonification/examples/social/"

chuck ${SRC}Play.ck ${SRC}Socket.ck ${SRC}Rules.ck ${SRC}Log.ck ${EXAMPLES}ServerRules.ck ${EXAMPLES}social.ck:${MEDIA} 

exit
