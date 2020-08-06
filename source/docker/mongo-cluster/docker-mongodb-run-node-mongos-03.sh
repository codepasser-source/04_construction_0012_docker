#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongo-mongos-03 \
  -p 27037:27017 \
  -v /data/docker/mongo/volume/config/mongod-mongos.conf:/etc/mongo/mongod.conf \
  -v /data/docker/mongo/volume/configdb/node-mongos-03/:/data/configdb \
  -v /data/docker/mongo/volume/data/node-mongos-03:/data/db \
  -d codepasser/mongo \
  --config /etc/mongo/mongod.conf
