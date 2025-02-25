#!/bin/bash

CONTAINER_IMG=sammtcbn/zephyr_devbase:zephyr_3_4_0_sdk_0_16_9
CONTAINER_NAME=zephyr_devbase

docker run --name ${CONTAINER_NAME} --rm -it ${CONTAINER_IMG} bash
