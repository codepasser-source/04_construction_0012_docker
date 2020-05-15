# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name filebeat-master \
  -v /data/docker/filebeat/volume/conf/filebeat.yml:/usr/share/filebeat/filebeat.yml \
  -v /data/program:/data/program \
  -d codepasser/filebeat
