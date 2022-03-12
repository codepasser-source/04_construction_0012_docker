#!/bin/bash
# docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
docker exec -it node3.zookeeper.codepasser.io zkCli.sh -server node3.zookeeper.codepasser.io:2181
