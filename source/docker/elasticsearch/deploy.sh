# es-head
rm -rf es-head.tar.gz
tar cvf es-head.tar.gz ./es-head
scp -P 10022 es-head.tar.gz root@192.168.3.229:/var/data/docker/elasticsearch