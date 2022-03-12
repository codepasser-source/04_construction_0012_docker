#!/bin/bash
# docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
docker exec -it node2.zookeeper.codepasser.io zkCli.sh -server node2.zookeeper.codepasser.io:2181
