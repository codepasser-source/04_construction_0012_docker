docker exec -it shard31.mongo.codepasser.io mongo
config = {
    "_id":"shard3",
    "members":[
      {"_id":0,host:"shard31.mongo.codepasser.io:27017"},
      {"_id":1,host:"shard32.mongo.codepasser.io:27017"},
      {"_id":2,host:"shard33.mongo.codepasser.io:27017","arbiterOnly":true}
    ]
}
rs.initiate(config)
## 查看集群状态
rs.status()
