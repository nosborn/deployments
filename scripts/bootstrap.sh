#!/bin/bash

set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

mkdir -p clusters/tombstone/flux-system
flux install --export >clusters/tombstone/flux-system/gotk-components.yaml

synology_csi_version=v1.2.1
synology_csi_base="https://raw.githubusercontent.com/SynologyOpenSource/synology-csi/refs/tags/${synology_csi_version}/deploy/kubernetes/v1.20"
{
  cat <<'EOF'
---
apiVersion: v1
kind: Namespace
metadata:
  annotations: {}
  labels:
    pod-security.kubernetes.io/enforce: privileged
    pod-security.kubernetes.io/warn: baseline
  name: synology-csi
EOF
  for manifest in csi-driver.yml controller.yml node.yml; do
    printf -- '---\n'
    curl -fsSL "${synology_csi_base}/${manifest}"
  done | gsed 's|/var/lib/kubelet|/var/lib/k0s/kubelet|g'
} >infrastructure/controllers/synology-csi.yaml
