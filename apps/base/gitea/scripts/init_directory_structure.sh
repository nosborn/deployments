#!/usr/bin/env bash
set -eu

# prepare temp directory structure
mkdir -pv "${GITEA_TEMP:?}"
chmod -v ug+rwx "${GITEA_TEMP:?}"

# prepare app.ini location so environment-to-ini --config has a valid target
mkdir -pv "${GITEA_APP_INI%/*}"
touch "${GITEA_APP_INI:?}"
