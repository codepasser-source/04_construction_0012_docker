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

docker network prune

docker volume prune

docker rmi codepasser/mysql