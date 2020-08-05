#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongo-shardsvr-03 \
  -p 27039:27017 \
  -v /data/docker/mongo/volume/config/mongod-shardsvr-03.conf:/etc/mongo/mongod.conf \
  -v /data/docker/mongo/volume/configdb/node-shardsvr-03/:/data/configdb \
  -v /data/docker/mongo/volume/data/node-shardsvr-03:/data/db \
  -d codepasser/mongo \
  --config /etc/mongo/mongod.conf
