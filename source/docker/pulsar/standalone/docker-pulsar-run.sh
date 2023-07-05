# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name standalone.pulsar.codepasser.io \
  --network codepasser_overlay \
  -p 6650:6650 \
  -p 8080:8080 \
  -v standalone.pulsar.codepasser.io.conf:/pulsar/conf \
  -v standalone.pulsar.codepasser.io.data:/pulsar/data \
  -d codepasser/pulsar bin/pulsar standalone
