# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name logstash-master \
  -p 5044:5044 \
  -p 9600:9600 \
  -v /data/docker/logstash/volume/conf/logstash.yml:/usr/share/logstash/config/logstash.yml \
  -v /data/docker/logstash/volume/conf/pipelines.yml:/usr/share/logstash/config/pipelines.yml \
  -v /data/docker/logstash/volume/pipeline:/usr/share/logstash/pipeline \
  -d codepasser/logstash
