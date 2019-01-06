ARG REGISTRY_NAMESPACE
ARG BUILD_TAG
FROM ${REGISTRY_NAMESPACE}/base:${BUILD_TAG}

# cksumh test
RUN set -x \
  && ls -l /usr/local/bin \
  && touch /usr/local/file1 \
  && echo 'test1' > /usr/local/file2 \
  && cksumh dir /usr/local/ base-test1 \
  && cksumh rm_unchanged base base-test1 \
  && [[ -f /usr/local/file1 ]] \
  && [[ -f /usr/local/file2 ]] \
  && echo 'test2' > /usr/local/file2 \
  && touch /usr/local/file3 \
  && cksumh dir /usr/local/ base-test2 \
  && cksumh rm_unchanged base-test1 base-test2 \
  && [[ ! -f /usr/local/file1 ]] \
  && [[ -f /usr/local/file2 ]] \
  && [[ -f /usr/local/file3 ]]
