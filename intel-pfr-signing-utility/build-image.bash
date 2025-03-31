#!/bin/bash

source env.bash || exit 1

echo "docker build -t ${img} -f Dockerfile . --no-cache"
docker build -t ${img} -f Dockerfile . --no-cache
echo

echo docker image ls -a
docker image ls -a
