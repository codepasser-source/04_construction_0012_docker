#!/bin/bash
# docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
docker exec -it redis-node-01 redis-cli -p 6379 -a cde3VFR$ cluster info
docker exec -it redis-node-01 redis-cli -p 6379 -a cde3VFR$ cluster nodes
