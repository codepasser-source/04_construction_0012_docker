#!/bin/bash
# docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
#docker exec -it [CONTAINER] mongo
# single auth
docker exec -it mongo-single mongo admin -u root -p Sa*963.-+
docker exec -it mongo-single mongo daemon -u daemon -p cde3VFR$
# mongos-01 auth
docker exec -it mongo-mongos-01 mongo admin -u root -p Sa*963.-+
docker exec -it mongo-mongos-01 mongo daemon -u daemon -p cde3VFR$
# mongos-02 auth
docker exec -it mongo-mongos-02 mongo admin -u root -p Sa*963.-+
docker exec -it mongo-mongos-02 mongo daemon -u daemon -p cde3VFR$
# mongos-03 auth
docker exec -it mongo-mongos-03 mongo admin -u root -p Sa*963.-+
docker exec -it mongo-mongos-03 mongo daemon -u daemon -p cde3VFR$
