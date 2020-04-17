#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name redis-master \
  -p 6379:6379 \
  -v /data/docker/redis/volume/conf/redis.conf:/usr/local/etc/redis/redis.conf \
  -v /data/docker/redis/volume/data/:/data \
  -d codepasser/redis redis-server /usr/local/etc/redis/redis.conf
