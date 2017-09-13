#!/bin/bash

HEADER="Docker nexus -"

echo "$HEADER in process..."

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

CADDY=$DIR/caddy
mkdir -p $CADDY

wget https://raw.githubusercontent.com/beyond-coding/docker-nexus/master/Caddyfile
cp Caddyfile $CADDY/.
rm Caddyfile

# mkdir $CADDY/srv
# wget https://raw.githubusercontent.com/beyond-coding/docker-nexus/master/index.html
# cp index.html $CADDY/srv/.
# rm index.html

# echo "nexus.beyond-coding.com" >> $CADDY/Caddyfile
# echo "tls guillermo.herrero@beyond-coding.com" >> $CADDY/Caddyfile

# mkdir nexus

echo "$HEADER starting..."

wget https://raw.githubusercontent.com/beyond-coding/docker-nexus/master/docker-compose.yml

docker-compose up -d