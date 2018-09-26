FROM alpine:3.8

COPY script /root/script

RUN apk add --no-cache bash

RUN /root/script/checksum_dir /usr/local > /root/alpine.crc
