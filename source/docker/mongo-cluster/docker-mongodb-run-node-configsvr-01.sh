#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongo-configsvr-01 \
  -p 27027:27017 \
  -v /data/docker/mongo/volume/config/mongod-configsvr-01.conf:/etc/mongo/mongod.conf \
  -v /data/docker/mongo/volume/configdb/node-configsvr-01/:/data/configdb \
  -v /data/docker/mongo/volume/data/node-configsvr-01:/data/db \
  -d codepasser/mongo \
  --config /etc/mongo/mongod.conf
