# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name jenkins-master \
  -p 8081:8080 \
  -p 50000:50000 \
  -v /data/docker/jenkins/volume/data/:/var/jenkins_home \
  -d codepasser/jenkins
