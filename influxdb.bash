#!/bin/bash
docker run -d --name influxdb -p 8086:8086 quay.io/influxdb/influxdb:2.2.0
