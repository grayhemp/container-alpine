# container-base

[![Build Status](https://travis-ci.org/grayhemp/container-base.svg?branch=master)](https://travis-ci.org/grayhemp/container-base)

A minimal base image.

Based on [Alpine Linux] currently, has bash and ca-certificates
pre-baked and planned to be getting more enhancements in the future.

## Usage

```dockerfile
FROM grayhemp/base
```

## Development

See [grayhemp/container-build] to get an idea of building this image.

[Alpine Linux]: https://www.alpinelinux.org
[grayhemp/container-build]: https://github.com/grayhemp/container-build
