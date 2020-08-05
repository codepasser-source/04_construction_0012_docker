#!/bin/bash
docker exec -it redis-node-01 redis-cli --cluster create \
  172.16.20.121:6379 \
  172.16.20.121:6380 \
  172.16.20.121:6381 \
  172.16.20.121:6389 \
  172.16.20.121:6390 \
  172.16.20.121:6391 \
  --cluster-replicas 1
