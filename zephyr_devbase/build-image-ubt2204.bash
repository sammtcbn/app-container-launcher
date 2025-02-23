#!/bin/bash

docker build -t sammtcbn/zephyr_devbase -f Dockerfile-ubt2204 . --no-cache

echo

echo docker image ls -a
docker image ls -a
