docker exec -it shard21.mongo.codepasser.io mongo
config = {
    "_id":"shard2",
    "members":[
      {"_id":0,host:"shard21.mongo.codepasser.io:27019"},
      {"_id":1,host:"shard22.mongo.codepasser.io:27019","arbiterOnly":true},
      {"_id":2,host:"shard23.mongo.codepasser.io:27019"}
    ]
}
rs.initiate(config)
## 查看集群状态
rs.status()
