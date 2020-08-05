#!/bin/bash
# docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
docker exec -it mongo-single mongo admin -u admin -p Sa*963.-+
## execute create user
##db.createUser({ user: 'root', pwd: 'Sa*963.-+', roles: [ { role: "root", db: "admin" } ] });
## execute create daemon
##use daemon
##db.createUser({ user: 'daemon', pwd: 'cde3VFR$', roles: [ { role: "readWrite", db: "daemon" } ] });
