#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongo-shardsvr-22 \
  -p 27227:27017 \
  -v /data/docker/mongo/volume/config/mongod-shardsvr-shard2.conf:/etc/mongo/mongod.conf \
  -v /data/docker/mongo/volume/configdb/node-shardsvr-22/:/data/configdb \
  -v /data/docker/mongo/volume/data/node-shardsvr-22:/data/db \
  -d codepasser/mongo \
  --config /etc/mongo/mongod.conf
