# 停止分片
docker exec -it shard11.mongo.codepasser.io mongo
## 主动降级
rs.stepDown();
use admin;
db.shutdownServer();