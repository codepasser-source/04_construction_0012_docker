#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name redis-node-01 \
  --net host \
  -v /data/docker/redis/volume/conf/redis-node-01.conf:/usr/local/etc/redis/redis.conf \
  -v /data/docker/redis/volume/data/node-01:/data \
  -d codepasser/redis redis-server /usr/local/etc/redis/redis.conf
