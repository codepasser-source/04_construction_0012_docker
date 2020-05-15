# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name kibana-master \
  -p 5601:5601 \
  -v /data/docker/kibana/volume/conf/kibana.yml:/usr/share/kibana/config/kibana.yml \
  -d codepasser/kibana
