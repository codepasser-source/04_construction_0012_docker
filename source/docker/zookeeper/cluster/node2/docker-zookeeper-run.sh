# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
	--name node2.zookeeper.codepasser.io \
	--net host \
	-v $(pwd)/volume/conf/zoo.cfg:/conf/zoo.cfg \
	-v $(pwd)/volume/data:/data \
	-v node2.zookeeper.codepasser.io:/datalog \
	-v node2.zookeeper.codepasser.io:/logs \
	-d codepasser/zookeeper
