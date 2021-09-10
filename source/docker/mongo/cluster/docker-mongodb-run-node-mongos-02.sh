#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongo-mongos-02 \
  -p 27027:27017 \
  -v /data/docker/mongo/volume/config/mongod-mongos.conf:/etc/mongo/mongod.conf \
  -v /data/docker/mongo/volume/configdb/node-mongos-02/:/data/configdb \
  -v /data/docker/mongo/volume/data/node-mongos-02:/data/db \
  -d codepasser/mongo \
  mongos \
  --config /etc/mongo/mongod.conf
