#!/bin/bash

CONTAINER=sammtcbn/zephyr_devbase:zephyr_3_4_0_sdk_0_16_9

function f_dkr()
{
  docker run --name zephyr_devbase --rm -it --workdir /home/foo/workspace -v $(pwd)/workspace/:/home/foo/workspace ${CONTAINER} bash
}

f_dkr
