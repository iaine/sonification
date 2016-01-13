#!/bin/bash

HOST="localhost"
PORT=6789
CHANNEL="/social"
TYPE="i i"
FILE=""
SRC="../../src/"


chuck ${SRC}Play.ck ${SRC}Log.ck ${SRC}Socket.ck ${SRC}Rules.ck ClientRules.ck socialplay.ck:${HOST}:${PORT}:${CHANNEL}:${TYPE}
