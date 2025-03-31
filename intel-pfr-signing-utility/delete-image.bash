#!/bin/bash

source env.bash || exit 1

echo docker rmi -f ${img}
docker rmi -f ${img}

echo

echo docker image ls -a
docker image ls -a
