#!/bin/bash
TAG=8.2.0

echo docker rmi -f mysql:${TAG}
docker rmi -f mysql:${TAG}

echo

echo docker image ls -a
docker image ls -a
