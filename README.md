# docker-base

[![Build Status](https://travis-ci.org/grayhemp/docker-base.svg?branch=master)](https://travis-ci.org/grayhemp/docker-base)

A minimal base image.

Currently based on [Alpine Linux][alpine-linux]. Will be getting
enhancements in the future.

```dockerfile
FROM grayhemp/base:latest
```

## Development

Consult with the `build` script's code and sourced modules for
commands and input variables.

```bash
./build
./build push < password
```

<!-- Links -->

[alpine-linux]: https://www.alpinelinux.org
