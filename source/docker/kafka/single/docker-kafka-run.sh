# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name single.kafka.codepasser.io \
  --network codepasser_overlay \
  --restart=always \
  -p 9092:9092 \
  -e ALLOW_PLAINTEXT_LISTENER=yes \
  -v $(pwd)/volume/conf/server.properties:/bitnami/kafka/config/server.properties \
  -v single.kafka.codepasser.io:/bitnami/kafka/data \
  -d codepasser/kafka
