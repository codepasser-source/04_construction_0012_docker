rm -rf docker-compose.tar.gz
tar cvf docker-compose.tar.gz docker-compose
scp -P 10022 docker-compose.tar.gz root@192.168.10.138:/var/data/docker