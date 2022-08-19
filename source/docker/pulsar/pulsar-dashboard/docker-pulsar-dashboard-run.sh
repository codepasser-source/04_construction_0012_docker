# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name dashboard.pulsar.codepasser.io \
  --network codepasser_overlay \
  -p 8081:80 \
  -e SERVICE_URL=http://172.16.20.141:8080 \
  -d codepasser/pulsar-dashboard
