#!/usr/bin/env bash
set -eu

# prepare temp directory structure
mkdir -pv "${GITEA_TEMP:?}"
chmod -v ug+rwx "${GITEA_TEMP:?}"
