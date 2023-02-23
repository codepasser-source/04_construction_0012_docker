#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name single.consul.codepasser.io \
  --network codepasser_overlay \
  -p 8300:8300 \
  -p 8301:8301 \
  -p 8302:8302 \
  -p 8500:8500 \
  -p 8600:8600 \
  -dev \
  -join single.consul.codepasser.io \
  -v single.consul.codepasser.io:/consul/data \
  -d codepasser/consul
