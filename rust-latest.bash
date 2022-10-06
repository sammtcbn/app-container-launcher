#!/bin/bash
# refer to https://hub.docker.com/_/rust
mkdir -p $PWD/rust-src
docker run --rm -it --name rust-dev -v $PWD/rust-src:/root/src rust
