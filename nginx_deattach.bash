#!/bin/bash

#host_port=80
host_port=8080

container_port=80

docker run -d --name mynginx1 -p ${host_port}:${container_port} nginx

echo "run below command to visit nginx server"
echo "    curl http://127.0.0.1:${host_port}/"
