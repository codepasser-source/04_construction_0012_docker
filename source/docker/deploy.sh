rm -rf mysql.tar.gz
tar cvf mysql.tar.gz ./mysql
scp -P 10022 mysql.tar.gz root@192.168.3.229:/var/data/docker
scp -P 10122 mysql.tar.gz root@192.168.3.229:/var/data/docker