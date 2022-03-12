#!/bin/bash
# docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
docker exec -it single.zookeeper.codepasser.io zkCli.sh -server single.zookeeper.codepasser.io:2181
