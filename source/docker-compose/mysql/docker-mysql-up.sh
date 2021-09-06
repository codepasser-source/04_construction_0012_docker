#!/bin/bash
#
# Copyright codepasser.io. All Rights Reserved.
#
echo
echo "##### [devops.codepasser.io] #############################"
echo "##### Docker container start up ##########################"
echo "##########################################################"
docker-compose -f docker-compose.yaml up -d
