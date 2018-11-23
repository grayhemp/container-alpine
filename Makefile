.PHONY: build push

build:
	scripts/docker build build/docker 'base'

push:
	scripts/docker push 'base'
