#!/bin/bash
# docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
# requirepass when mast to be setting password excute
# docker exec -it redis-node-01 redis-cli -c -p 6379 -a cde3VFR$
docker exec -it redis-node-01 redis-cli -c -p 6379
