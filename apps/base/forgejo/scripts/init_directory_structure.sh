#!/usr/bin/env bash
set -euo pipefail

set -x
mkdir -p /data/git/.ssh
chmod -R 700 /data/git/.ssh
[[ ! -d /data/gitea/conf ]] && mkdir -p /data/gitea/conf

# prepare temp directory structure
mkdir -p "${GITEA_TEMP:?}"
chmod ug+rwx "${GITEA_TEMP:?}"
