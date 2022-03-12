#!/bin/bash
# docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
docker exec -it node1.zookeeper.codepasser.io zkCli.sh -server node1.zookeeper.codepasser.io:2181
