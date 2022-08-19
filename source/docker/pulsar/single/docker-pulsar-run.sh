# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
	--name single.pulsar.codepasser.io \
	--network codepasser_overlay \
	-p 9092:9092 \
	-e ALLOW_PLAINTEXT_LISTENER=yes \
	-v $(pwd)/volume/conf/server.properties:/bitnami/pulsar/config/server.properties \
	-v single.pulsar.codepasser.io:/bitnami/pulsar/data \
	-d codepasser/pulsar
