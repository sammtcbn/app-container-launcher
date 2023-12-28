#!/bin/bash
#docker run    -it --rm --name="drawio" -p 8080:8080 -p 8443:8443 jgraph/drawio
docker  run -d -it --rm --name="drawio" -p 8080:8080 -p 8443:8443 jgraph/drawio
