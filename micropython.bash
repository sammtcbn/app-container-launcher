#!/bin/bash
hostpath=$PWD/micropython-data
ctrpath=/root/workspace

mkdir -p ${hostpath}

docker run --rm -it --name micropython --network=host --mount type=bind,source=${hostpath},target=${ctrpath} --workdir=${ctrpath} --entrypoint bash micropython/unix:v1.19
