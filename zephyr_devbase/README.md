# Usage

Run following command in host to init code base and log on container:
```
mkdir -p workspace

git clone -b zephyr-v3.4.0 https://github.com/zephyrproject-rtos/zephyr.git workspace/zephyr

docker run --name zephyr_devbase --rm -it -v $(pwd)/workspace/:/home/foo/workspace sammtcbn/zephyr_devbase:zephyr_3_4_0_sdk_0_16_9 bash
```

Then run following command in container to init code base:
```
cd workspace
west init -l zephyr/
west update
west build -b stm32f103_mini zephyr/samples/basic/blinky
```

