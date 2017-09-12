#!/bin/bash

HEADER="Docker nexus -"

echo "$HEADER in process..."

CADDY=$HOME/caddy
mkdir -p $CADDY

echo "nexus.beyond-coding.com" >> $CADDY/Caddyfile
echo "tls guillermo.herrero@beyond-coding.com" >> $CADDY/Caddyfile

echo "$HEADER starting..."

wget https://raw.githubusercontent.com/beyond-coding/docker-nexus/master/docker-compose.yml

docker-compose up