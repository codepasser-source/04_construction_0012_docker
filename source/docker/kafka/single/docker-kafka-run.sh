# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
	--name single.kafka.codepasser.io \
	--network codepasser_overlay \
	-p 2181:2181 \
	-v $(pwd)/volume/conf/zoo.cfg:/conf/zoo.cfg \
	-v single.kafka.codepasser.io:/data \
	-v single.kafka.codepasser.io:/datalog \
	-v single.kafka.codepasser.io:/logs \
	-d codepasser/kafka
