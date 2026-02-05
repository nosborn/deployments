#!/bin/sh

set -e

exit_code=0

for file in "$@"; do
  if ! grep -q '^sops:$' "$file"; then
    echo "ERROR: $file is not encrypted (missing sops: metadata)"
    exit_code=1
  fi
done

exit $exit_code
