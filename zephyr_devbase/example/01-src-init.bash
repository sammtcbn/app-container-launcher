#!/bin/bash
TOPDIR=$(pwd)

ZEPHYR_SRC=https://github.com/zephyrproject-rtos/zephyr
ZEPHYR_TAG=zephyr-v3.4.0

CONTAINER=sammtcbn/zephyr_devbase:zephyr_3_4_0_sdk_0_16_9

function f_rmws()
{
  cd ${TOPDIR} || exit 1
  echo "rm -rf workspace"
  rm -rf workspace || exit 1
  echo done
}

function f_dlsrc()
{
  cd ${TOPDIR} || exit 1
  mkdir -p workspace || exit 1

  git clone -b ${ZEPHYR_TAG} ${ZEPHYR_SRC} workspace/zephyr || exit 1

  docker run --name zephyr_devbase --rm -it --workdir /home/foo/workspace -v $(pwd)/workspace/:/home/foo/workspace ${CONTAINER} west init -l zephyr/ || exit 1
}

function f_update()
{
  cd ${TOPDIR} || exit 1

  docker run --name zephyr_devbase --rm -it --workdir /home/foo/workspace -v $(pwd)/workspace/:/home/foo/workspace ${CONTAINER} west update || exit 1
}

f_rmws
f_dlsrc
f_update
