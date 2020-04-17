#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name redis-node-13 \
  --net host \
  -v /data/docker/redis/volume/conf/redis-node-13.conf:/usr/local/etc/redis/redis.conf \
  -v /data/docker/redis/volume/data/node-13:/data \
  -d codepasser/redis redis-server /usr/local/etc/redis/redis.conf
