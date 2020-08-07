#!/bin/bash
# docker logs [OPTIONS] CONTAINER
# shardsvr - shard1
docker logs -f mongo-shardsvr-11
docker logs -f mongo-shardsvr-12
docker logs -f mongo-shardsvr-13
# shardsvr - shard2
docker logs -f mongo-shardsvr-21
docker logs -f mongo-shardsvr-22
docker logs -f mongo-shardsvr-23
# shardsvr - shard3
docker logs -f mongo-shardsvr-31
docker logs -f mongo-shardsvr-32
docker logs -f mongo-shardsvr-33
