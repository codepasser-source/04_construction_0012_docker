#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongo-configsvr-02 \
  -p 27002:27017 \
  -v /data/docker/mongo/volume/config/mongod-configsvr.conf:/etc/mongo/mongod.conf \
  -v /data/docker/mongo/volume/configdb/node-configsvr-02/:/data/configdb \
  -v /data/docker/mongo/volume/data/node-configsvr-02:/data/db \
  -d codepasser/mongo \
  --config /etc/mongo/mongod.conf
