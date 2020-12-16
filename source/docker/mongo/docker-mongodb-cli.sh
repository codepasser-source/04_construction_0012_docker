#!/bin/bash
# docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
#docker exec -it [CONTAINER] mongo
# single auth
docker exec -it mongo-single mongo admin -u root -p Sa*963.-+
docker exec -it mongo-single mongo admin -u admin -p Sa*963.-+
docker exec -it mongo-single mongo daemon -u daemon -p cde3VFR$
# mongos-01 auth
docker exec -it mongo-mongos-01 mongo admin -u root -p Sa*963.-+
docker exec -it mongo-mongos-01 mongo admin -u admin -p Sa*963.-+
docker exec -it mongo-mongos-01 mongo daemon -u daemon -p cde3VFR$
# mongos-02 auth
docker exec -it mongo-mongos-02 mongo admin -u root -p Sa*963.-+
docker exec -it mongo-mongos-02 mongo admin -u admin -p Sa*963.-+
docker exec -it mongo-mongos-02 mongo daemon -u daemon -p cde3VFR$
# mongos-03 auth
docker exec -it mongo-mongos-03 mongo admin -u root -p Sa*963.-+
docker exec -it mongo-mongos-03 mongo admin -u admin -p Sa*963.-+
docker exec -it mongo-mongos-03 mongo daemon -u daemon -p cde3VFR$

# configsvr-01
docker exec -it mongo-configsvr-01 mongo
docker exec -it mongo-configsvr-02 mongo
docker exec -it mongo-configsvr-03 mongo

# shardsvr-1
docker exec -it mongo-shardsvr-11 mongo
docker exec -it mongo-shardsvr-12 mongo
docker exec -it mongo-shardsvr-13 mongo

# shardsvr-2
docker exec -it mongo-shardsvr-21 mongo
docker exec -it mongo-shardsvr-22 mongo
docker exec -it mongo-shardsvr-23 mongo

# shardsvr-3
docker exec -it mongo-shardsvr-31 mongo
docker exec -it mongo-shardsvr-32 mongo
docker exec -it mongo-shardsvr-33 mongo