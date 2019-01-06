.PHONY: build push test

build:
	imgh build 'base'

push:
	imgh push 'base'
	imgh push 'base-test'

test:
	imgh build 'base-test' test
