#!/bin/bash
#
# Copyright codepasser.io. All Rights Reserved.
#
echo
echo "##### [devops.codepasser.io] #############################"
echo "##### Docker container clean up ##########################"
echo "##########################################################"

docker ps -a

docker images

docker volume ls

docker network ls

netstat -lnt

docker swarm leave

docker volume prune -f

docker network prune -f

docker rmi codepasser/mysql