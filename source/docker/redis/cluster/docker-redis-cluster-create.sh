#!/bin/bash
docker exec -it master1.redis.codepasser.io redis-cli -p 6379 --cluster create \
  192.168.1.160:1379 \
  192.168.1.160:2379 \
  192.168.1.160:3379 \
  192.168.1.160:1380 \
  192.168.1.160:2380 \
  192.168.1.160:3380 \
  --cluster-replicas 1
