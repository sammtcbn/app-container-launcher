#!/bin/bash
mkdir -p $PWD/minio-data
docker run  -d -p 9000:9000  --name myminio -e "MINIO_ROOT_USER=minioadmin" -e "MINIO_ROOT_PASSWORD=minioadmin" -v $PWD/minio-data:/data minio/minio server /data
