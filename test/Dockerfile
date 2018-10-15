ARG IMAGE_URL
ARG IMAGE_TAG='master'

FROM ${IMAGE_URL}:${IMAGE_TAG}

RUN set -x \
  && touch /usr/local/file1 \
  && echo 'test1' > /usr/local/file2 \
  && checksum_dir /usr/local > /var/tmp/alpine-test1.crc \
  && remove_unchanged /var/tmp/alpine.crc /var/tmp/alpine-test1.crc \
  && [[ -f /usr/local/file1 ]] \
  && [[ -f /usr/local/file2 ]] \
  && echo 'test2' > /usr/local/file2 \
  && touch /usr/local/file3 \
  && checksum_dir /usr/local > /var/tmp/alpine-test2.crc \
  && remove_unchanged /var/tmp/alpine-test1.crc /var/tmp/alpine-test2.crc \
  && [[ ! -f /usr/local/file1 ]] \
  && [[ -f /usr/local/file2 ]] \
  && [[ -f /usr/local/file3 ]]
