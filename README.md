# docker-alpine

[![Build Status](https://travis-ci.org/grayhemp/docker-alpine.svg?branch=master)](https://travis-ci.org/grayhemp/docker-alpine)

Enhanced [Alpine Linux][alpine-linux] base image.

```dockerfile
FROM grayhemp/alpine:3.8
```

## Usage

Along with the base image it provides a number of helper scripts
located under the `/root/script` directory.

The image also creates its `/usr/local` checksum list file using
`checksum_dir` as `/root/alpine.crc`.

### `checksum_dir`

```bash
checksum_dir <directory>
```

Makes a list of files and links with ckecksums for a directory
content.

### `remove_unchanged`

```bash
remove_unchanged <checksum_file_1> <checksum_file_2>
```

Compares two checksum files made by `checksum_dir` and removes files
and links which remained the same in the second file comparing to the
first one.

This is useful for minimal images creation when only a "diff" between
two stages is needed.

## Building

```bash
./build
```

Optionally accepts `IMAGE_REPO` (current user) and `IMAGE_TAG`
(`master`) envs.

## Pushing

```bash
cat password  | ./build push
```

In addition to `IMAGE_REPO` and `IMAGE_TAG` shown above, optionally
accepts `DOCKER_REGISTRY` and `DOCKER_REGISTRY_USERNAME` (current
user) envs. The registry password is expected from `STDIN`.

<!-- Links -->

[alpine-linux]: https://www.alpinelinux.org
