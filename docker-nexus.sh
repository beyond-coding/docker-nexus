#!/bin/bash

HEADER="Docker nexus -"

echo "$HEADER in process..."

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

CADDY=$DIR/caddy
mkdir -p $CADDY

wget https://raw.githubusercontent.com/beyond-coding/docker-nexus/master/Caddyfile
cp Caddyfile $CADDY/.
rm Caddyfile

mkdir -p $DIR/nexus/nexus-data
mkdir -p $DIR/nexus/sonatype-work

echo "$HEADER starting..."

wget https://raw.githubusercontent.com/beyond-coding/docker-nexus/master/docker-compose.yml

docker-compose up -d