#!/bin/sh
set -eu

curl -fLsS -o /tmp/html.zip https://github.com/nosborn/tombstone.osborn.io/archive/refs/heads/main.zip
unzip -o /tmp/html.zip -d /usr/share/nginx/html
rm /tmp/html.zip
