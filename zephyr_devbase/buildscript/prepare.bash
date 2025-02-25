#!/bin/bash

SDKVER=0.16.9
ZEPHYR_VER=3.4.0

rm -rf prerequisite
rm -rf tmp

mkdir -p prerequisite/python_requirements
mkdir -p tmp

SDKFILE=zephyr-sdk-${SDKVER}_linux-x86_64.tar.xz
wget https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v${SDKVER}/${SDKFILE} -P tmp || exit 1
tar xvf tmp/${SDKFILE} -C prerequisite || exit 1

curl -sL https://raw.githubusercontent.com/zephyrproject-rtos/zephyr/refs/tags/zephyr-v${ZEPHYR_VER}/scripts/requirements.txt -o prerequisite/python_requirements/requirements.txt || exit 1

curl -sL https://raw.githubusercontent.com/zephyrproject-rtos/zephyr/refs/tags/zephyr-v${ZEPHYR_VER}/scripts/requirements-base.txt -o prerequisite/python_requirements/requirements-base.txt || exit 1

curl -sL https://raw.githubusercontent.com/zephyrproject-rtos/zephyr/refs/tags/zephyr-v${ZEPHYR_VER}/scripts/requirements-build-test.txt -o prerequisite/python_requirements/requirements-build-test.txt || exit 1

curl -sL https://raw.githubusercontent.com/zephyrproject-rtos/zephyr/refs/tags/zephyr-v${ZEPHYR_VER}/scripts/requirements-doc.txt -o prerequisite/python_requirements/requirements-doc.txt || exit 1

curl -sL https://raw.githubusercontent.com/zephyrproject-rtos/zephyr/refs/tags/zephyr-v${ZEPHYR_VER}/scripts/requirements-run-test.txt -o prerequisite/python_requirements/requirements-run-test.txt || exit 1

curl -sL https://raw.githubusercontent.com/zephyrproject-rtos/zephyr/refs/tags/zephyr-v${ZEPHYR_VER}/scripts/requirements-extras.txt -o prerequisite/python_requirements/requirements-extras.txt || exit 1

curl -sL https://raw.githubusercontent.com/zephyrproject-rtos/zephyr/refs/tags/zephyr-v${ZEPHYR_VER}/scripts/requirements-compliance.txt -o prerequisite/python_requirements/requirements-compliance.txt || exit 1

echo done
