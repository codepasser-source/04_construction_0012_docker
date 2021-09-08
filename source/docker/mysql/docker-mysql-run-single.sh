# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name mysql-single \
  -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=Sa*963.-+ \
  -v $(pwd)/volume/conf/node-single:/etc/mysql/conf.d \
  -v mysql-single.codepasser.io:/var/lib/mysql \
  -d codepasser/mysql
