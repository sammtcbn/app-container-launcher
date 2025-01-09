#!/bin/bash

docker build -t sammtcbn/pythonkasa -f Dockerfile . --no-cache

echo

echo docker image ls -a
docker image ls -a
