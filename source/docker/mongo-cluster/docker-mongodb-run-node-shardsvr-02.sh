#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongo-shardsvr-02 \
  -p 27038:27017 \
  -v /data/docker/mongo/volume/config/mongod-shardsvr-02.conf:/etc/mongo/mongod.conf \
  -v /data/docker/mongo/volume/configdb/node-shardsvr-02/:/data/configdb \
  -v /data/docker/mongo/volume/data/node-shardsvr-02:/data/db \
  -d codepasser/mongo \
  --config /etc/mongo/mongod.conf
