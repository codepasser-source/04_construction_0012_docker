docker exec -it mongo-mongos-01 mongo
sh.addShard("shard1/172.16.20.121:27117,172.16.20.121:27127,172.16.20.121:27137")
sh.addShard("shard2/172.16.20.121:27217,172.16.20.121:27227,172.16.20.121:27237")
sh.addShard("shard3/172.16.20.121:27317,172.16.20.121:27327,172.16.20.121:27337")
## 查看分片状态
sh.status()