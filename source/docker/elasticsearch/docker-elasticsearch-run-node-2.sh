#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name elasticsearch-node-2 \
  -p 9202:9202 \
  -p 9302:9302 \
  -e "ES_JAVA_OPTS=-Xms1024m -Xmx1024m" \
  -v /data/docker/elasticsearch/volume/conf/elasticsearch-node-2.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
  -v /data/docker/elasticsearch/volume/plugins/elasticsearch-analysis-ik-7.7.0:/usr/share/elasticsearch/plugins/elasticsearch-analysis-ik-7.7.0 \
  -v /data/docker/elasticsearch/volume/plugins/elasticsearch-analysis-pinyin-7.7.0:/usr/share/elasticsearch/plugins/elasticsearch-analysis-pinyin-7.7.0 \
  -v /data/docker/elasticsearch/volume/data/node-2:/usr/share/elasticsearch/data \
  -d codepasser/elasticsearch
