#!/bin/bash
# docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
# shardsvr - shard1
docker exec -it mongo-shardsvr-11 bash
docker exec -it mongo-shardsvr-12 bash
docker exec -it mongo-shardsvr-13 bash
# shardsvr - shard2
docker exec -it mongo-shardsvr-21 bash
docker exec -it mongo-shardsvr-22 bash
docker exec -it mongo-shardsvr-23 bash
# shardsvr - shard3
docker exec -it mongo-shardsvr-31 bash
docker exec -it mongo-shardsvr-32 bash
docker exec -it mongo-shardsvr-33 bash