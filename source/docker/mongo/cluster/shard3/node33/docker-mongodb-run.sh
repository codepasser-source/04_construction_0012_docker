#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name shard33.mongo.codepasser.io \
  --network codepasser_overlay \
  -p 27020:27017 \
  -v $(pwd)/volume/config/mongod.conf:/etc/mongo/mongod.conf \
  -v $(pwd)/volume/configdb:/data/configdb \
  -v shard33.mongo.codepasser.io:/data/db \
  -d codepasser/mongo --config /etc/mongo/mongod.conf
