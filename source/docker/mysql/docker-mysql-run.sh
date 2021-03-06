# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mysql-master \
  -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=Sa*963.-+ \
  -v /data/docker/mysql/volume/conf:/etc/mysql/conf.d \
  -v /data/docker/mysql/volume/data:/var/lib/mysql \
  -d codepasser/mysql
