#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name follower1.consul.codepasser.io \
  --network codepasser_overlay \
  --restart=always \
  -p 8500:8500 \
  -e CONSUL_BIND_INTERFACE=eth0 \
  -v follower1.consul.codepasser.io:/consul/data \
  -v $(pwd)/volume/conf:/consul/config \
  -d codepasser/consul agent