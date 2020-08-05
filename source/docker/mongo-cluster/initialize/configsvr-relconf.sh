docker exec -it mongo-configsvr-01 mongo
config = {
    "_id":"replconf",
    "members":[
      {"_id":0,host:"172.16.20.121:27027"},
      {"_id":1,host:"172.16.20.121:27028"},
      {"_id":2,host:"172.16.20.121:27029"}
    ]
}
rs.initiate(config)
## 查看集群状态
rs.status()
