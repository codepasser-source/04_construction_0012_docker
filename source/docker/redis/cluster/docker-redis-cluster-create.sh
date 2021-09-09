#!/bin/bash
docker exec -it master1.redis.codepasser.io redis-cli --cluster create \
  master1.redis.codepasser.io:6379 \
  master2.redis.codepasser.io:6379 \
  master3.redis.codepasser.io:6379 \
  slave1.redis.codepasser.io:6379 \
  slave2.redis.codepasser.io:6379 \
  slave3.redis.codepasser.io:6379 \
  --cluster-replicas 1
