#!/bin/bash
docker exec -it master1.redis.codepasser.io redis-cli -p 6379 --cluster create \
  172.16.20.141:6379 \
  172.16.20.176:6379 \
  172.16.20.184:6379 \
  172.16.20.141:6380 \
  172.16.20.176:6380 \
  172.16.20.184:6380 \
  --cluster-replicas 1