#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongo-shardsvr-11 \
  -p 27117:27017 \
  -v /data/docker/mongo/volume/config/mongod-shardsvr-shard1.conf:/etc/mongo/mongod.conf \
  -v /data/docker/mongo/volume/configdb/node-shardsvr-11/:/data/configdb \
  -v /data/docker/mongo/volume/data/node-shardsvr-11:/data/db \
  -d codepasser/mongo \
  --config /etc/mongo/mongod.conf
