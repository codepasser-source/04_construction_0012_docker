#!/bin/bash
# docker build [OPTIONS] PATH | URL | -
docker build -f ./build/Dockerfile -t codepasser/tesseract-training:centos8 .
