#!/bin/bash
#docker logs $(docker ps -a | grep sammtcbn/node-web-app | cut -d' ' -f1)
docker logs node-web-app
