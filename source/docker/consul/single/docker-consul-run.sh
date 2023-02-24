#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name single.consul.codepasser.io \
  --network codepasser_overlay \
  --restart=always \
  -p 8300:8300 \
  -p 8301:8301 \
  -p 8302:8302 \
  -p 8500:8500 \
  -p 8600:8600 \
  -e CONSUL_BIND_INTERFACE=eth0 \
  -v single.consul.codepasser.io:/consul/data \
  -d codepasser/consul agent --server=true --bootstrap=true --client='0.0.0.0' --ui=true --node=single --datacenter=codepasser-single
