#!/bin/bash

HOST="localhost"
PORT=6789
CHANNEL="social"
TYPE="i"
FILE=""
SRC="../../src/"


chuck ${SRC}File.ck ${SRC}Config.ck ${SRC}Play.ck ${SRC}Log.ck ${SRC}Socket.ck ${SRC}Rules.ck ClientRules.ck socialplay.ck:${HOST}:${PORT}:${CHANNEL}:${TYPE}
