#!/bin/bash

docker build -t sammtcbn/debenv -f Dockerfile . --no-cache

echo

echo docker image ls -a
docker image ls -a
