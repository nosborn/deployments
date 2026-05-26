#!/bin/bash
set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

mkdir -p clusters/phobos/flux-system
flux install --export >clusters/phobos/flux-system/gotk-components.yaml
