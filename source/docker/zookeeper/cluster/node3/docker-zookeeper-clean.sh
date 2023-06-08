#!/bin/bash
# docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
docker volume rm node3.zookeeper.codepasser.io
rm -rf volume/data/version*
