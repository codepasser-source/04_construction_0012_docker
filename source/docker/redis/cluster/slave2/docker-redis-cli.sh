#!/bin/bash
# docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
docker exec -it slave2.redis.codepasser.io redis-cli -p 6379
