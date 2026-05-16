#!/bin/bash
set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

mkdir -p clusters/phobos/flux-system
flux install --components-extra=image-reflector-controller,image-automation-controller \
  --export >clusters/phobos/flux-system/gotk-components.yaml
