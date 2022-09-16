#!/bin/bash
# refer to https://hub.docker.com/r/nodered/node-red/

# docker run -it -p 1880:1880 --name mynodered nodered/node-red-docker
# docker run -it -p 1880:1880 -v myNodeREDdata:/data --name mynodered nodered/node-red
docker run -it -p 1880:1880 nodered/node-red
