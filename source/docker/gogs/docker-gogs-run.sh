# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
# -v $HOME/gogs/volume/conf/app.ini:/data/gogs/conf/app.ini
docker run \
        --name gogs.codepasser.io \
        --network codepasser_overlay \
        -p 10022:22 \
        -p 3000:3000 \
        -v gogs.codepasser.io:/data \
        -v gogs.backup.codepasser.io:/backup \
        -d codepasser/gogs