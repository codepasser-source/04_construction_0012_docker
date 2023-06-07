#!/bin/bash
# docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
docker volume rm config1.mongo.codepasser.io
docker volume rm mongos1.mongo.codepasser.io
docker volume rm shard11.mongo.codepasser.io
docker volume rm shard21.mongo.codepasser.io
docker volume rm shard31.mongo.codepasser.io

docker volume rm config2.mongo.codepasser.io
docker volume rm mongos2.mongo.codepasser.io
docker volume rm shard12.mongo.codepasser.io
docker volume rm shard22.mongo.codepasser.io
docker volume rm shard32.mongo.codepasser.io

docker volume rm config3.mongo.codepasser.io
docker volume rm mongos3.mongo.codepasser.io
docker volume rm shard13.mongo.codepasser.io
docker volume rm shard23.mongo.codepasser.io
docker volume rm shard33.mongo.codepasser.io
