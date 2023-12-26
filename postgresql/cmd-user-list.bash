#!/bin/bash
docker exec -it postgres psql -U postgres -c "\du"

echo

docker exec -it postgres psql -U postgres -c "\du+"
