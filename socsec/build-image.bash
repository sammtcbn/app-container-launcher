#!/bin/bash
echo docker build -t sammtcbn/socsec -f Dockerfile . --no-cache
docker build -t sammtcbn/socsec -f Dockerfile . --no-cache
echo
echo docker image ls -a
docker image ls -a
