# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
	--name single.zookeeper.codepasser.io \
	-p 2181:2181 \
	-v $HOME/zookeeper/volume/conf/zoo.cfg:/conf/zoo.cfg \
	-v $HOME/zookeeper/volume/data/:/data \
	-d codepasser/zookeeper
