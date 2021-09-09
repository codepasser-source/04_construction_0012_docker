#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name master2.redis.codepasser.io \
  --net host \
  -v $(pwd)/volume/conf/redis.conf:/usr/local/etc/redis/redis.conf \
  -v master2.redis.codepasser.io:/data \
  -d codepasser/redis redis-server /usr/local/etc/redis/redis.conf
