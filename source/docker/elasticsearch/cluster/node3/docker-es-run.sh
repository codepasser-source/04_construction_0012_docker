#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name node3.es.codepasser.io \
  --network codepasser_overlay \
  -p 9200:9200 \
  -p 9300:9300 \
  -e "ES_JAVA_OPTS=-Xms1024m -Xmx1024m" \
  -v $(pwd)/volume/conf/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
  -v $(pwd)/../../plugins/elasticsearch-analysis-ik-7.14.0:/usr/share/elasticsearch/plugins/elasticsearch-analysis-ik-7.14.0 \
  -v $(pwd)/../../plugins/elasticsearch-analysis-pinyin-7.14.0:/usr/share/elasticsearch/plugins/elasticsearch-analysis-pinyin-7.14.0 \
  -v node3.es.codepasser.io:/usr/share/elasticsearch/data \
  -d codepasser/elasticsearch
