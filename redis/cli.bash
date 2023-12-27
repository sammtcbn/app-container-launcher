#!/bin/bash
docker exec -it redis-server redis-cli || exit 1
