#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongo-single \
  -p 27017:27017 \
  -e MONGO_INITDB_ROOT_USERNAME=admin \
  -e MONGO_INITDB_ROOT_PASSWORD=Sa*963.-+ \
  -v /data/docker/mongo/volume/config/mongod-single.conf:/etc/mongo/mongod.conf \
  -v /data/docker/mongo/volume/configdb/node-single/:/data/configdb \
  -v /data/docker/mongo/volume/data/node-single:/data/db \
  -d codepasser/mongo \
  --config /etc/mongo/mongod.conf
