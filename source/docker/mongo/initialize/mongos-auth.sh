docker exec -it mongo-mongos-01 mongo
use admin
# Creation root administrator
db.createUser({ user: 'root', pwd: 'Sa*963.-+', roles: [ { role: "root", db: "admin" } ] });
# Creation admin administrator
db.createUser({
    user:'admin',pwd:'Sa*963.-+',
    roles:[
        {role:'clusterAdmin',db:'admin'},
        {role:'userAdminAnyDatabase',db:'admin'},
        {role:'dbAdminAnyDatabase',db:'admin'},
        {role:'readWriteAnyDatabase',db:'admin'}
]});
# Creation project db user
use daemon;
db.createUser({ user: 'daemon', pwd: 'cde3VFR$', roles: [ { role: "readWrite", db: "daemon" } ] });
