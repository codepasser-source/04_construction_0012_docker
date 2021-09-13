docker exec -it mongo-mongos-01 mongo
sh.addShard("shard1/shard11.mongo.codepasser.io:27018,shard12.mongo.codepasser.io:27018,shard13.mongo.codepasser.io:27018")
sh.addShard("shard2/shard21.mongo.codepasser.io:27019,shard22.mongo.codepasser.io:27019,shard23.mongo.codepasser.io:27019")
sh.addShard("shard3/shard31.mongo.codepasser.io:27020,shard32.mongo.codepasser.io:27020,shard33.mongo.codepasser.io:27020")
## 查看分片状态
sh.status()
