#!/bin/bash
#docker stop $(docker ps -a | grep sammtcbn/node-web-app | cut -d' ' -f1)
docker stop node-web-app
