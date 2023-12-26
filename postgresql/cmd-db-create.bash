#!/bin/bash
docker exec -it postgres psql -U postgres -c "create database testdb owner sam"
