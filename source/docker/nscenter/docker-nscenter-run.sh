# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name nsenter.codepasser.io \
  --privileged \
  --pid=host \
  -it justincormack/nsenter1
