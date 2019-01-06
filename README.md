# container-base

[![Build Status](https://travis-ci.org/grayhemp/container-base.svg?branch=master)](https://travis-ci.org/grayhemp/container-base)

A minimal base image.

Based on [Alpine Linux] it currently has bash, ca-certificates and
[cksumfs] pre-baked and planned to be getting more enhancements in the
future.

## Usage

```dockerfile
FROM grayhemp/base
```

## Development

Relies on [grayhemp/container-build] for image build steps.

```bash
make
make test
make push
```

[cksumfs]: scripts/cksumh
[grayhemp/container-build]: https://github.com/grayhemp/container-build
[Alpine Linux]: https://www.alpinelinux.org
