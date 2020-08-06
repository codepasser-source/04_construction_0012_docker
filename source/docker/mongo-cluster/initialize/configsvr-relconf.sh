docker exec -it mongo-configsvr-01 mongo
config = {
    "_id":"replconf",
    "configsvr": true,
    "members":[
      {"_id":0,host:"172.16.20.121:27001"},
      {"_id":1,host:"172.16.20.121:27002"},
      {"_id":2,host:"172.16.20.121:27003"}
    ]
}
rs.initiate(config)
## 查看集群状态
rs.status()
