# container-base

[![Build Status](https://travis-ci.org/grayhemp/container-base.svg?branch=master)](https://travis-ci.org/grayhemp/container-base)

A minimal base image.

Currently based on [Alpine Linux][alpine-linux]. Will be getting
enhancements in the future.

```dockerfile
FROM grayhemp/base:latest
```

## Development

Consult with the `Makefile` and the `scripts` for commands and input
variables.

```bash
make
make push < password
```

<!-- Links -->

[alpine-linux]: https://www.alpinelinux.org
