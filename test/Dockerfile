ARG IMAGE_REPO
ARG IMAGE_TAG='master'

FROM ${IMAGE_REPO}/alpine:${IMAGE_TAG}

RUN set -x \
  && touch /usr/local/file1 \
  && echo 'test1' > /usr/local/file2 \
  && /root/script/checksum_dir /usr/local > /root/alpine-test1.crc \
  && /root/script/remove_unchanged /root/alpine.crc /root/alpine-test1.crc \
  && [[ -f /usr/local/file1 ]] \
  && [[ -f /usr/local/file2 ]] \
  && echo 'test2' > /usr/local/file2 \
  && touch /usr/local/file3 \
  && /root/script/checksum_dir /usr/local > /root/alpine-test2.crc \
  && /root/script/remove_unchanged /root/alpine-test1.crc /root/alpine-test2.crc \
  && [[ ! -f /usr/local/file1 ]] \
  && [[ -f /usr/local/file2 ]] \
  && [[ -f /usr/local/file3 ]]
