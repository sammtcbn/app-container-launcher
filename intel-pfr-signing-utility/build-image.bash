#!/bin/bash

docker build -t sammtcbn/intel-pfr-signing-utility -f Dockerfile . --no-cache

echo

echo docker image ls -a
docker image ls -a
