#!/bin/bash
echo docker rmi -f sammtcbn/zephyr_devbase
docker rmi -f sammtcbn/zephyr_devbase

echo

echo docker image ls -a
docker image ls -a
