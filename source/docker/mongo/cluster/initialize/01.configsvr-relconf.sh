docker exec -it mongo-configsvr-01 mongo
config = {
    "_id":"replconf",
    "configsvr": true,
    "members":[
      {"_id":0,host:"config1.mongo.codepasser.io:27016"},
      {"_id":1,host:"config2.mongo.codepasser.io:27016"},
      {"_id":2,host:"config3.mongo.codepasser.io:27016"}
    ]
}
rs.initiate(config)
## 查看集群状态
rs.status()
