#!/bin/bash

source env.bash || exit 1

docker run -it --rm --name ${contname} --workdir /home/foo ${img} bash
