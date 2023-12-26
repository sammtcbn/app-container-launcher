#!/bin/bash
echo docker rmi -f postgres
docker rmi -f postgres

echo

echo docker image ls -a
docker image ls -a
