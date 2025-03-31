#!/bin/bash
source env.bash || exit 1

docker run --name ${contname} --rm -it -v $(pwd):${contws} --workdir="${contws}" ${img} bash

