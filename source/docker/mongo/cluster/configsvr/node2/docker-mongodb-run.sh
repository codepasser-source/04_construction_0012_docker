#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name configsvr2.mongo.codepasser.io \
  --network codepasser_overlay \
  -p 27016:27017 \
  -v $(pwd)/volume/config/mongod.conf:/etc/mongo/mongod.conf \
  -v $(pwd)/volume/configdb:/data/configdb \
  -v configsvr2.mongo.codepasser.io:/data/db \
  -d codepasser/mongo --config /etc/mongo/mongod.conf
