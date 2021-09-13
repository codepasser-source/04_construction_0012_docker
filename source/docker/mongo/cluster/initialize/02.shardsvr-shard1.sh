docker exec -it mongo-shardsvr-11 mongo
config = {
    "_id":"shard1",
    "members":[
      {"_id":0,host:"172.16.20.121:27117"},
      {"_id":1,host:"172.16.20.121:27127"},
      {"_id":2,host:"172.16.20.121:27137","arbiterOnly":true}
    ]
}
rs.initiate(config)
## 查看集群状态
rs.status()
