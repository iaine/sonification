#!/bin/bash

HOST="localhost"
PORT=5678
CHANNEL="/osc/test"
TYPE="f"


chuck ../src/Play.ck ../src/Rules.ck ../src/Log.ck ../src/Socket.ck \
       EntRules.ck \
       entsend.ck:${HOST}:${PORT}:${CHANNEL}:${TYPE}  \
       entrecv.ck:${HOST}:${PORT}:${CHANNEL}:${TYPE}
