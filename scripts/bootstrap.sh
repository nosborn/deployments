#!/bin/bash

set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

mkdir -p clusters/tombstone/flux-system
flux install --components-extra=image-reflector-controller,image-automation-controller \
  --export >clusters/tombstone/flux-system/gotk-components.yaml
