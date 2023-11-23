#!/bin/bash
MYSQL_ROOT_PW=1234
TAG=8.0
docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PW} -d mysql:${TAG}
