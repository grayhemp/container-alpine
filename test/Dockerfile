ARG REPO
ARG TAG='master'

FROM ${REPO}:${TAG}

RUN set -x \
  && touch /usr/local/file1 \
  && echo 'test1' > /usr/local/file2 \
  && checksum_dir alpine-test1 /usr/local \
  && remove_unchanged alpine alpine-test1 \
  && [[ -f /usr/local/file1 ]] \
  && [[ -f /usr/local/file2 ]] \
  && echo 'test2' > /usr/local/file2 \
  && touch /usr/local/file3 \
  && checksum_dir alpine-test2 /usr/local \
  && remove_unchanged alpine-test1 alpine-test2 \
  && [[ ! -f /usr/local/file1 ]] \
  && [[ -f /usr/local/file2 ]] \
  && [[ -f /usr/local/file3 ]]
