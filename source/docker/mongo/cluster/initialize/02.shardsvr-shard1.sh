docker exec -it shard11.mongo.codepasser.io mongo
config = {
    "_id":"shard1",
    "members":[
      {"_id":0,host:"shard11.mongo.codepasser.io:27018","arbiterOnly":true},
      {"_id":1,host:"shard12.mongo.codepasser.io:27018"},
      {"_id":2,host:"shard13.mongo.codepasser.io:27018"}
    ]
}
rs.initiate(config)
## 查看集群状态
rs.status()
