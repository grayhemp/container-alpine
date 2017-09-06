#!/usr/bin/env bash
set -e

function all() {
    image
}

function image() {
    docker image build --tag grayhemp/alpine .
}

if [ $# -eq 0 ]; then
    set - all
fi

$@
