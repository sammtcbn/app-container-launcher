#!/bin/bash
mkdir -p $PWD/java-src
docker run --rm -it --name java-dev -v $PWD/java-src:/root/java-src --workdir /root/java-src openjdk:8 bash
