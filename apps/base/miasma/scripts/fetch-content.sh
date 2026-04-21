#!/bin/sh
set -eu

cd /data
curl -fLOsS https://github.com/nosborn/tombstone.osborn.io/archive/refs/heads/main.zip
unzip main.zip -d /data
rm main.zip
