#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongo-shardsvr-13 \
  -p 27137:27017 \
  -v /data/docker/mongo/volume/config/mongod-shardsvr-shard1.conf:/etc/mongo/mongod.conf \
  -v /data/docker/mongo/volume/configdb/node-shardsvr-13/:/data/configdb \
  -v /data/docker/mongo/volume/data/node-shardsvr-13:/data/db \
  -d codepasser/mongo \
  --config /etc/mongo/mongod.conf
