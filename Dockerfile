FROM alpine:3.8

RUN set -x \
  && apk update \
  && apk add --no-cache bash

COPY src /usr/bin

RUN checksum_dir alpine /usr/local
