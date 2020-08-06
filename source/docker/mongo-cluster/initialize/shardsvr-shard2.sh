docker exec -it mongo-shardsvr-21 mongo
config = {
    "_id":"shard2",
    "members":[
      {"_id":0,host:"172.16.20.121:27217","arbiterOnly":true},
      {"_id":1,host:"172.16.20.121:27227"},
      {"_id":2,host:"172.16.20.121:27237"}
    ]
}
rs.initiate(config)
## 查看集群状态
rs.status()
