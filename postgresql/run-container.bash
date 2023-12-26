#!/bin/bash
PW=admin
docker run -d --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=${PW} postgres
