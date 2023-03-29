#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name master3.redis.codepasser.io \
  --net host \
  --restart=always \
  -v $(pwd)/volume/conf/redis.conf:/usr/local/etc/redis/redis.conf \
  -v master3.redis.codepasser.io:/data \
  -d codepasser/redis redis-server /usr/local/etc/redis/redis.conf
