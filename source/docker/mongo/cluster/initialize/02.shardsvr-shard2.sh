docker exec -it shard22.mongo.codepasser.io mongo
config = {
    "_id":"shard2",
    "members":[
      {"_id":0,host:"shard21.mongo.codepasser.io:27017","arbiterOnly":true},
      {"_id":1,host:"shard22.mongo.codepasser.io:27017"},
      {"_id":2,host:"shard23.mongo.codepasser.io:27017"}
    ]
}
rs.initiate(config)
## 查看集群状态
rs.status()