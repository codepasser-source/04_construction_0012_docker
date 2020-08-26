# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name tesseract-centos8 \
  -v /data/docker/tesseract/volume/data/fonts/zh:/usr/share/fonts/zh \
  -v /data/docker/tesseract/volume/data/leptonica:/usr/local/lib/leptonica \
  -v /data/docker/tesseract/volume/data/tesseract:/usr/local/lib/tesseract \
  -v /data/docker/tesseract/volume/data/tessdata:/usr/local/share/tessdata \
  -v /data/docker/tesseract/volume/data/tesstrain:/usr/local/share/tesstrain \
  -d codepasser/tesseract-centos8
