#!/bin/bash
# docker build [OPTIONS] PATH | URL | -
docker build -f ./build/Dockerfile -t codepasser/mongo .
