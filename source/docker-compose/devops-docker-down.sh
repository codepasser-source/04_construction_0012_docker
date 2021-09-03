#!/bin/bash
#
# Copyright codepasser.io. All Rights Reserved.
#
echo
echo "##### [devops.codepasser.io] #############################"
echo "##### Docker container shutdown ##########################"
echo "##########################################################"
docker-compose -f docker-compose.yaml down
