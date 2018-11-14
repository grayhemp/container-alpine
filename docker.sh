#!/usr/bin/env bash
#
# Docker convenience functions

# source docker.sh
# command_build() {
#   docker::build . 'image_name'
# }

: ${REGISTRY_USER:="$(id -un)"}
: ${REGISTRY:="registry-1.docker.io/${REGISTRY_USER}"}
: ${TAG:='master'}

: ${CACHE_TAGS:='master latest'}

docker::build() {
  local cache
  local context="${1?Context must be specified}"
  local name="${2?Name must be specified}"
  local repo="${REGISTRY}/${name}"
  for tag in "${TAG}" ${CACHE_TAGS}; do
    if [[ -z "$(docker image ls -q ${repo}:${tag})" ]]; then
      docker image pull "${repo}:${tag}" || true
    fi
    cache="--cache-from ${repo}:${tag} ${cache}"
  done
  docker image build \
    --build-arg REGISTRY="${REGISTRY}" \
    --build-arg TAG="${TAG}" \
    ${cache} \
    -t "${repo}:${TAG}" "${context}"
}

docker::push() {
  local name="${1?Name must be specified}"
  if [[ -z "${is_logged_in}" ]]; then
    trap "docker logout ${REGISTRY?Registry must be specified}" EXIT
    docker login --password-stdin -u "${REGISTRY_USER}" "${REGISTRY}"
    is_logged_in=1
  fi
  docker image push "${REGISTRY}/${name}:${TAG}"
}
