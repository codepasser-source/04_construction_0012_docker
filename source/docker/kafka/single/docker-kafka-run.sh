# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
	--name single.kafka.codepasser.io \
	--network codepasser_overlay \
	-p 9092:9092 \
	-e ALLOW_PLAINTEXT_LISTENER=yes \
	-e KAFKA_CFG_ZOOKEEPER_CONNECT=node1.zookeeper.codepasser.io:2181 \
	-v $(pwd)/volume/conf/server.properties:/opt/bitnami/kafka/conf/server.properties \
	-v single.kafka.codepasser.io:/bitnami/kafka \
	-d codepasser/kafka
