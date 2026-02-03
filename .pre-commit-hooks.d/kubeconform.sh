#!/bin/bash

mkdir -p .kubeconform

kubeconform \
  -cache .kubeconform \
  -ignore-missing-schemas \
  -output pretty \
  -schema-location default \
  -schema-location 'https://raw.githubusercontent.com/datreeio/CRDs-catalog/main/{{.Group}}/{{.ResourceKind}}_{{.ResourceAPIVersion}}.json' \
  -strict \
  "$@"
