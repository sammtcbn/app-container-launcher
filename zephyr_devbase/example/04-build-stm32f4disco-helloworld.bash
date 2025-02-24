#!/bin/bash
# refer to https://docs.zephyrproject.org/latest/boards/arm/stm32f4_disco/doc/index.html
TOPDIR=$(pwd)

CONTAINER=sammtcbn/zephyr_devbase:zephyr_3_4_0_sdk_0_16_9

BOARD=stm32f4_disco
APPDIR=zephyr/samples/hello_world

cd ${TOPDIR} || exit 1

rm -rf workspace/build || exit 1

docker run --name zephyr_devbase --rm -it --workdir /home/foo/workspace -v $(pwd)/workspace/:/home/foo/workspace ${CONTAINER} west build -b ${BOARD} ${APPDIR} || exit 1

echo

ls -la workspace/build/zephyr/zephyr.bin || exit 1

echo done
