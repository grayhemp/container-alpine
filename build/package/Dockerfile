# 3.8 2018-12-19
FROM alpine@sha256:621c2f39f8133acb8e64023a94dbdf0d5ca81896102b9e57c0dc184cadaf5528 AS base

RUN set -x \
  && apk add --no-cache bash ca-certificates

COPY scripts/cksumh /usr/local/bin/cksumh

RUN set -x \
  && cksumh dir /usr/local/ base
