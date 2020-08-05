#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongo-shardsvr-01 \
  -p 27037:27017 \
  -v /data/docker/mongo/volume/config/mongod-shardsvr-01.conf:/etc/mongo/mongod.conf \
  -v /data/docker/mongo/volume/configdb/node-shardsvr-01/:/data/configdb \
  -v /data/docker/mongo/volume/data/node-shardsvr-01:/data/db \
  -d codepasser/mongo \
  --config /etc/mongo/mongod.conf
