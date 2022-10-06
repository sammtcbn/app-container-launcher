#!/bin/bash
# refer to https://hub.docker.com/_/python
mkdir -p $PWD/python-src
docker run --rm -it --name python-dev -v $PWD/python-src:/root/python-src python bash
