#!/bin/bash
# docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
docker exec -it master1.redis.codepasser.io redis-cli -p 1379 -a cde3VFR$ cluster info
docker exec -it master1.redis.codepasser.io redis-cli -p 1379 -a cde3VFR$ cluster nodes
