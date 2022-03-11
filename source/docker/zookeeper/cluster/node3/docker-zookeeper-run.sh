# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
	--name node3.zookeeper.codepasser.io \
	--net host \
	-p 2181:2181 \
	-v $(pwd)/volume/conf/zoo.cfg:/conf/zoo.cfg \
	-v $(pwd)/volume/data:/data \
	-v node3.zookeeper.codepasser.io:/datalog \
	-v node3.zookeeper.codepasser.io:/logs \
	-d codepasser/zookeeper
