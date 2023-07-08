# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name node3.kafka.codepasser.io \
  --network codepasser_overlay \
  --restart=always \
  -p 9092:9092 \
  -e ALLOW_PLAINTEXT_LISTENER=yes \
  -e KAFKA_CFG_LISTENERS=PLAINTEXT://:9092,CONTROLLER://:9093 \
  -e KAFKA_CFG_ADVERTISED_LISTENERS=PLAINTEXT://node3.kafka.codepasser.io:9092 \
  -e KAFKA_CFG_ZOOKEEPER_CONNECT=node1.zookeeper.codepasser.io:2181,node2.zookeeper.codepasser.io:2181,node3.zookeeper.codepasser.io:2181 \
  -e KAFKA_CFG_AUTO_CREATE_TOPICS_ENABLE=false \
  -e KAFKA_CFG_DELETE_TOPIC_ENABLE=true \
  -e KAFKA_KRAFT_CLUSTER_ID=capital-cluster \
  -v $(pwd)/volume/conf/server.properties:/bitnami/kafka/config/server.properties \
  -v node3.kafka.codepasser.io:/bitnami/kafka/data \
  -d codepasser/kafka
