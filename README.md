# Docker image for [iniscan](https://github.com/psecio/iniscan)

[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)

The image are based on [Alpine Linux](https://alpinelinux.org/) and built daily.
It also uses [tini](https://github.com/krallin/tini) as [init](https://en.wikipedia.org/wiki/Init).

## Supported tags

- `latest` [(latest/Dockerfile)](https://github.com/dockerized-php/iniscan/blob/master/latest/Dockerfile)
- `3.6` [(3.6/Dockerfile)](https://github.com/dockerized-php/iniscan/blob/master/3.6/Dockerfile)
- `3.5` [(3.5/Dockerfile)](https://github.com/dockerized-php/iniscan/blob/master/3.5/Dockerfile)

## How to use this image

### Install

Install the container:

```
docker pull dockerizedphp/iniscan
```

Alternatively, pull a specific version:

```
docker pull dockerizedphp/iniscan:3.6
```

### Usage

```
docker run --rm -ti -v /path/to/php.ini:/tmp dockerizedphp/iniscan scan --path=php.ini
```
