#!/bin/bash
docker run --name imgtool --rm -it -v $(pwd):/home/mcu/workspace --workdir="/home/mcu/workspace" sammtcbn/imgtool:latest bash
