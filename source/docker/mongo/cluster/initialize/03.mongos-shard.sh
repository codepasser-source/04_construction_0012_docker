docker exec -it mongos1.mongo.codepasser.io mongo
sh.addShard("shard1/shard11.mongo.codepasser.io:27017,shard12.mongo.codepasser.io:27017,shard13.mongo.codepasser.io:27017")
sh.addShard("shard2/shard21.mongo.codepasser.io:27017,shard22.mongo.codepasser.io:27017,shard23.mongo.codepasser.io:27017")
sh.addShard("shard3/shard31.mongo.codepasser.io:27017,shard32.mongo.codepasser.io:27017,shard33.mongo.codepasser.io:27017")
## 查看分片状态
sh.status()
