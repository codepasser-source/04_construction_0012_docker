#!/bin/bash
# docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
docker volume rm single.zookeeper.codepasser.io
rm -rf volume/data/version*
