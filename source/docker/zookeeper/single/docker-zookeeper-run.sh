# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
	--name single.zookeeper.codepasser.io \
	-p 2181:2181 \
	-v $(pwd)/volume/conf/zoo.cfg:/conf/zoo.cfg \
	-v single.zookeeper.codepasser.io:/data \
	-v single.zookeeper.codepasser.io:/datalog \
	-v single.zookeeper.codepasser.io:/logs \
	-d codepasser/zookeeper
