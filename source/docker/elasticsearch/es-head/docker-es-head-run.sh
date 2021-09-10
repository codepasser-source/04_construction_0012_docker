#!/bin/bash
# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name head.es.codepasser.io \
  --network codepasser_overlay \
  -p 3001:3001 \
  -v head.es.codepasser.io:/usr/src/app \
  -d codepasser/es-head
