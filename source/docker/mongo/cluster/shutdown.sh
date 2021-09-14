#!/bin/bash
cd ./mongos/node1
sh docker-mongodb-stop.sh
cd ../../shard1/node11
sh docker-mongodb-stop.sh
cd ../../shard2/node21
sh docker-mongodb-stop.sh
cd ../../shard3/node31
sh docker-mongodb-stop.sh