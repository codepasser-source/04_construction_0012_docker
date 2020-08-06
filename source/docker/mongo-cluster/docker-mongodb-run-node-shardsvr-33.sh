#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongo-shardsvr-33 \
  -p 27337:27017 \
  -v /data/docker/mongo/volume/config/mongod-shardsvr-shard3.conf:/etc/mongo/mongod.conf \
  -v /data/docker/mongo/volume/configdb/node-shardsvr-33/:/data/configdb \
  -v /data/docker/mongo/volume/data/node-shardsvr-33:/data/db \
  -d codepasser/mongo \
  --config /etc/mongo/mongod.conf
