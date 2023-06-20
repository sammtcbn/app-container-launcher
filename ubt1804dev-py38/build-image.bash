#!/bin/bash

docker build -t sammtcbn/ubt1804dev-py38 -f Dockerfile . --no-cache

echo

echo docker image ls -a
docker image ls -a
