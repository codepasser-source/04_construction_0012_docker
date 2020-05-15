# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name kibana-master \
  -p 5601:5601 \
  -d codepasser/kibana
