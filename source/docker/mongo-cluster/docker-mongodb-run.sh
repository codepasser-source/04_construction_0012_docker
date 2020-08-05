#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongo-master \
  -p 27017:27017 \
  -e MONGO_INITDB_ROOT_USERNAME=admin \
  -e MONGO_INITDB_ROOT_PASSWORD=Sa*963.-+ \
  -v /data/docker/mongo/volume/config/:/etc/mongo/ \
  -v /data/docker/mongo/volume/data/:/data/db \
  -d codepasser/mongo \
  --config /etc/mongo/mongod.conf
