#!/bin/bash

set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

mkdir -p clusters/tombstone/flux-system
flux install --export >clusters/tombstone/flux-system/gotk-components.yaml
