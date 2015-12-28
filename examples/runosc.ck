#!/bin/bash

HOST="localhost"
PORT=5678
CHANNEL="/osc/test"
TYPE="f"
FILE=""

chuck ../src/Play.ck ../src/Log.ck ../src/File.ck \
      ../src/Config.ck ../src/Socket.ck \
       entsend.ck:${HOST}:${PORT}:${FILE}:${CHANNEL}:${TYPE}  \
       entrecv.ck:${HOST}:${PORT}:${CHANNEL}:${TYPE}
