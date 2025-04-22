#!/bin/bash

#host_port=80
host_port=8080

container_port=80

docker run --name mynginx1 \
  -v website:/usr/share/nginx/html:ro \
  -p ${host_port}:${container_port} \
  -d nginx

