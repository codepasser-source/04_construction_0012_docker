# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name dashboard.pulsar.codepasser.io \
  --network codepasser_overlay \
  -p 6650:6650 \
  -p 8080:8080 \
  -v $(pwd)/volume/conf:/pulsar/conf \
  -v dashboard.pulsar.codepasser.io:/pulsar/data \
  -d codepasser/pulsar-dashboard bin/pulsar standalone
