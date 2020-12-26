docker exec -it mongo-mongos-01 mongo daemon -u daemon -p cde3VFR$
sh.enableSharding("daemon")
# Creation collection
db.createCollection("sys_area")
db.createCollection("sys_user_attribute")
# Creation shard hashed
sh.shardCollection("daemon.sys_area", {_id:"hashed"}, false, { numInitialChunks: 3} )
sh.shardCollection("daemon.sys_user_attribute", {_id:"hashed"}, false, { numInitialChunks: 3} )

# 查看分片状态
db.sys_area.getShardDistribution()
db.sys_user_attribute.getShardDistribution();
