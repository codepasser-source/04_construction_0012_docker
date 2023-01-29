# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name single.mysql.codepasser.io \
  --network codepasser_overlay \
  --security-opt seccomp:unconfined \
  --restart=always \
  -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=Sa*963.-+ \
  -v $(pwd)/volume/conf:/etc/mysql/conf.d \
  -v single.mysql.codepasser.io:/var/lib/mysql \
  -d codepasser/mysql
