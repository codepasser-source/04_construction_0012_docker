#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongo-shardsvr-21 \
  -p 27217:27017 \
  -v /data/docker/mongo/volume/config/mongod-shardsvr-shard2.conf:/etc/mongo/mongod.conf \
  -v /data/docker/mongo/volume/configdb/node-shardsvr-21/:/data/configdb \
  -v /data/docker/mongo/volume/data/node-shardsvr-21:/data/db \
  -d codepasser/mongo \
  --config /etc/mongo/mongod.conf
