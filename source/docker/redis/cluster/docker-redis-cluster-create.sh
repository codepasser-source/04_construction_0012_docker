#!/bin/bash
docker exec -it master1.redis.codepasser.io redis-cli -h 8.8.8.100 -p 6379 --cluster create \
  8.8.8.100:6379 \
  8.8.8.101:6379 \
  8.8.8.102:6379 \
  8.8.8.100:6380 \
  8.8.8.101:6380 \
  8.8.8.102:6380 \
  --cluster-replicas 1
