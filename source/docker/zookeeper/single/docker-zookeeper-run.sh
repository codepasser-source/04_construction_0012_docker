# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
	--name single.zookeeper.codepasser.io \
	-p 2181:2181 \
	-v $(pwd)/volume/conf/zoo.cfg:/conf/zoo.cfg \
	-v single.zookeeper.codepasser.io:/data \
	-d codepasser/zookeeper
