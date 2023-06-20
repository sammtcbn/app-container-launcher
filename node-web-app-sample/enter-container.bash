#!/bin/bash
#docker exec -it $(docker ps -a | grep sammtcbn/node-web-app | cut -d' ' -f1) /bin/bash
docker exec -it node-web-app /bin/bash
