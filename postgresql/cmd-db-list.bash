#!/bin/bash
docker exec postgres psql -U postgres -l

# or
# docker exec -it postgres psql -U postgres -c "\l"

