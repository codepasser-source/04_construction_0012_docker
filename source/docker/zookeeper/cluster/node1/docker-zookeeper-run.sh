# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name node1.zookeeper.codepasser.io \
  --network codepasser_overlay \
  --restart=always \
  -p 2181:2181 \
  -v $(pwd)/volume/conf/zoo.cfg:/conf/zoo.cfg \
  -v $(pwd)/volume/data:/data \
  -v node1.zookeeper.codepasser.io:/datalog \
  -v node1.zookeeper.codepasser.io:/logs \
  -d codepasser/zookeeper
