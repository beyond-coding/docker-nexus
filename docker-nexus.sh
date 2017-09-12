#!/bin/bash

HEADER="Docker nexus -"

echo "$HEADER in process..."

CADDY=$HOME/caddy
mkdir -p $CADDY

wget https://raw.githubusercontent.com/beyond-coding/docker-nexus/master/Caddyfile
mv Caddyfile $CADDY/.

# echo "nexus.beyond-coding.com" >> $CADDY/Caddyfile
# echo "tls guillermo.herrero@beyond-coding.com" >> $CADDY/Caddyfile

mkdir nexus && chown -R 200 nexus

echo "$HEADER starting..."

wget https://raw.githubusercontent.com/beyond-coding/docker-nexus/master/docker-compose.yml

docker-compose up -d