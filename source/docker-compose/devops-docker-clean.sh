#!/bin/bash
#
# Copyright codepasser.io. All Rights Reserved.
#
echo
echo "##### [devops.codepasser.io] #############################"
echo "##### Docker container start up ##########################"
echo "##########################################################"
docker ps -a

docker images

docker volume ls

docker network ls

docker exec -it mysql.codepasser.io mysql -uroot -pSa*963.-+

netstat -lnt