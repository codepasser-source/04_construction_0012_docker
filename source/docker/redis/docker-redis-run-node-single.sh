#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name redis-single \
  -p 6379:6379 \
  -v /data/docker/redis/volume/conf/redis-single.conf:/usr/local/etc/redis/redis.conf \
  -v /data/docker/redis/volume/data/node-single:/data \
  -d codepasser/redis redis-server /usr/local/etc/redis/redis.conf
