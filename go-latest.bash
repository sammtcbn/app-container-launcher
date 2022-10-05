#!/bin/bash
mkdir -p $PWD/go-src
docker run --rm -it --name golang-dev -v $PWD/go-src:/go/src golang
