#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mongo-master \
  -p 27017:27017 \
  -v /data/docker/mongo/volume/data/:/data/db \
  -d codepasser/mongo
