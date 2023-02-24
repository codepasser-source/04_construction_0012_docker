#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name leader.consul.codepasser.io \
  --network codepasser_overlay \
  --restart=always \
  -p 8500:8500 \
  -e CONSUL_BIND_INTERFACE=eth0 \
  -v leader.consul.codepasser.io:/consul/data \
  -v $(pwd)/volume/conf:/consul/config \
  -d codepasser/consul agent