#!/bin/bash
# docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
docker exec -it mongo-configsvr-01 bash
docker exec -it mongo-configsvr-02 bash
docker exec -it mongo-configsvr-03 bash