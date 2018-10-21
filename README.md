# docker-alpine

[![Build Status](https://travis-ci.org/grayhemp/container-alpine.svg?branch=master)](https://travis-ci.org/grayhemp/container-alpine)

Enhanced [Alpine Linux][alpine-linux] base image.

```dockerfile
FROM grayhemp/alpine:latest
```

## Usage

Along with the base image it provides `bash` by default and includes a
number of helper scripts.

### `checksum_dir`

```bash
checksum_dir <name> <directory>
```

Makes a list of files and links with ckecksums for a directory
content.

This image creates its `/usr/local` checksum list file using
`checksum_dir` by default with the name `alpine`.

### `remove_unchanged`

```bash
remove_unchanged <name_1> <name_2>
```

Compares two checksum files made by `checksum_dir` and removes files
and links which remained the same in the second file comparing to the
first one.

This is useful for minimal images creation when only a "diff" between
two stages is needed.

## Development

Every command optionally accepts `PROJECT` (current userby default)
and `TAG` (`master` by default) variables.

### Building

```bash
./build
```

### Testing

```bash
./build test
```

### Pushing

```bash
cat password  | ./build push
```

Optionally accepts `REGISTRY` and `REGISTRY_USER` (current user by
default) variables. The registry password is expected from `STDIN`.

<!-- Links -->

[alpine-linux]: https://www.alpinelinux.org
