docker exec -it mongo-shardsvr-02 mongo
config = {
    "_id":"shard2",
    "members":[
      {"_id":0,host:"172.16.20.121:27037","arbiterOnly":true},
      {"_id":1,host:"172.16.20.121:27038"},
      {"_id":2,host:"172.16.20.121:27039"}
    ]
}
rs.initiate(config)
## 查看集群状态
rs.status()
