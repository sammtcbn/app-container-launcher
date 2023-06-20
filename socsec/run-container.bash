#!/bin/bash
docker run --name socsec --rm -it -v $(pwd):/home/ast/workspace --workdir="/home/ast/workspace" sammtcbn/socsec:latest bash
