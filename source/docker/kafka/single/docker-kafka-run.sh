# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
	--name single.kafka.codepasser.io \
	--network codepasser_overlay \
	-p 9092:9092 \
	-e KAFKA_BROKER_ID=1 \
	-e KAFKA_CFG_LISTENERS=PLAINTEXT://:9092 \
	-e KAFKA_CFG_ADVERTISED_LISTENERS=PLAINTEXT://single.kafka.codepasser.io:9092 \
	-e KAFKA_CFG_ZOOKEEPER_CONNECT=node1.zookeeper.codepasser.io:2181,node2.zookeeper.codepasser.io:2181,node3.zookeeper.codepasser.io:2181 \
	-e ALLOW_PLAINTEXT_LISTENER=yes \
	-v $(pwd)/volume/conf:/bitnami/kafka/config \
	-v single.kafka.codepasser.io:/bitnami/kafka/data \
	-d codepasser/kafka
