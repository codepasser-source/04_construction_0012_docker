# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name single.pulsar.codepasser.io \
  --network codepasser_overlay \
  -p 6650:6650 \
  -p 8080:8080 \
  -v single.pulsar.codepasser.io:/pulsar/data \
  -d codepasser/pulsar bin/pulsar standalone
# -e PULSAR_PREFIX_xxx=yyy \
# --mount source=pulsarconf,target=/pulsar/conf \
# sh -c "bin/apply-config-from-env.py conf/standalone.conf && bin/pulsar standalone"
