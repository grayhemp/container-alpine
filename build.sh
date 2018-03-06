#!/usr/bin/env bash
#
# Build Docker images

set -o errexit

function image() {
  docker image build --tag grayhemp/alpine .
}

if [[ $# -eq 0 ]]; then
  image
else
  $@
fi
