#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name leader.consul.codepasser.io \
  --network codepasser_overlay \
  --restart=always \
  -p 8500:8500 \
  -e CONSUL_BIND_INTERFACE=eth0 \
  -v leader.consul.codepasser.io:/consul/data \
  -d codepasser/consul agent --server=true --ui=true --bootstrap-expect=3 --datacenter=codepasser-cluster --node=leader --client=0.0.0.0
