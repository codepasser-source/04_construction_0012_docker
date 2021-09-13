#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongos3.mongo.codepasser.io \
  --network codepasser_overlay \
  -p 27017:27017 \
  -v $(pwd)/volume/config/mongod.conf:/etc/mongo/mongod.conf \
  -v $(pwd)/volume/configdb:/data/configdb \
  -v mongos3.mongo.codepasser.io:/data/db \
  -d codepasser/mongo mongos --config /etc/mongo/mongod.conf
