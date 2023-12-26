#!/bin/bash
docker exec -it postgres psql -U postgres -c "create role sam with login password '1234';"
