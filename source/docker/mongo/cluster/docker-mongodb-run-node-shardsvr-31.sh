#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongo-shardsvr-31 \
  -p 27317:27017 \
  -v /data/docker/mongo/volume/config/mongod-shardsvr-shard3.conf:/etc/mongo/mongod.conf \
  -v /data/docker/mongo/volume/configdb/node-shardsvr-31/:/data/configdb \
  -v /data/docker/mongo/volume/data/node-shardsvr-31:/data/db \
  -d codepasser/mongo \
  --config /etc/mongo/mongod.conf
