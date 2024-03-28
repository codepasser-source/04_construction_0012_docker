# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name jenkins.codepasser.io \
  --network codepasser_overlay \
  --restart=on-failure \
  -p 3002:8080 \
  -p 50000:50000 \
  -v jenkins.codepasser.io:/var/jenkins_home \
  -v $(pwd)/volume/lib:/usr/local/lib \
  -d codepasser/jenkins