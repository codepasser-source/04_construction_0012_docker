#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name master1.redis.codepasser.io \
  --net host \
  -v $(pwd)/volume/conf/redis.conf:/usr/local/etc/redis/redis.conf \
  -v master1.redis.codepasser.io:/data \
  -d codepasser/redis redis-server /usr/local/etc/redis/redis.conf
