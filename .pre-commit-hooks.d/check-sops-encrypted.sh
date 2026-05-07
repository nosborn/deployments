#!/bin/sh

set -e

exit_code=0

# Detect SOPS metadata across YAML, JSON-wrapped binary, dotenv, and INI formats.
sops_marker='^sops:$|"sops"[[:space:]]*:|^sops_version=|^\[sops\]'

for file in "$@"; do
  if ! grep -qE "${sops_marker}" "${file}"; then
    echo "ERROR: ${file} is not encrypted (missing sops metadata)"
    exit_code=1
  fi
done

exit "${exit_code}"
