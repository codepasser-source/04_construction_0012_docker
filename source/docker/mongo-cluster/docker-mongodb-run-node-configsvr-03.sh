#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongo-configsvr-03 \
  -p 27029:27017 \
  -v /data/docker/mongo/volume/config/mongod-configsvr-03.conf:/etc/mongo/mongod.conf \
  -v /data/docker/mongo/volume/configdb/node-configsvr-03/:/data/configdb \
  -v /data/docker/mongo/volume/data/node-configsvr-03:/data/db \
  -d codepasser/mongo \
  --config /etc/mongo/mongod.conf
