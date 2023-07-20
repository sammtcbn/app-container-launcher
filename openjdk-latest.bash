#!/bin/bash
mkdir -p $PWD/java-src
docker run --rm -it --name openjdk-dev -v $PWD/java-src:/root/java-src --workdir /root/java-src openjdk bash
