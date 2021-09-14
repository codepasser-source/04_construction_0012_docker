#!/bin/bash
cd ./configsvr/node1
sh docker-mongodb-run.sh
cd ../../shard1/node11
sh docker-mongodb-run.sh
cd ../../shard2/node21
sh docker-mongodb-run.sh
cd ../../shard3/node31
sh docker-mongodb-run.sh