#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name elasticsearch-node-3 \
  -p 9203:9203 \
  -p 9303:9303 \
  -e "ES_JAVA_OPTS=-Xms1024m -Xmx1024m" \
  -v /data/docker/elasticsearch/volume/conf/elasticsearch-node-3.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
  -v /data/docker/elasticsearch/volume/plugins/elasticsearch-analysis-ik-7.6.2:/usr/share/elasticsearch/plugins/elasticsearch-analysis-ik-7.6.2 \
  -v /data/docker/elasticsearch/volume/plugins/elasticsearch-analysis-pinyin-7.6.2:/usr/share/elasticsearch/plugins/elasticsearch-analysis-pinyin-7.6.2 \
  -v /data/docker/elasticsearch/volume/data/node-3:/usr/share/elasticsearch/data \
  -d codepasser/elasticsearch
