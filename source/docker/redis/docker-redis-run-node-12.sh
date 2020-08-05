#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name redis-node-12 \
  --net host \
  -v /data/docker/redis/volume/conf/redis-node-12.conf:/usr/local/etc/redis/redis.conf \
  -v /data/docker/redis/volume/data/node-12:/data \
  -d codepasser/redis redis-server /usr/local/etc/redis/redis.conf
