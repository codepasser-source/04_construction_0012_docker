# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name master.mysql.codepasser.io \
  --network codepasser_overlay \
  -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=Sa*963.-+ \
  -v $(pwd)/volume/conf:/etc/mysql/conf.d \
  -v master.mysql.codepasser.io:/var/lib/mysql \
  -d codepasser/mysql
