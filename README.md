# Docker image for [iniscan](https://github.com/psecio/iniscan)

[![Build Status](https://travis-ci.org/dockerized-php/iniscan.svg?branch=master)](https://travis-ci.org/dockerized-php/iniscan)

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

I'm recommend to use the images as an shell alias to access via short-command.
To use simply *iniscan* everywhere on CLI add this line to your ~/.zshrc, ~/.bashrc or ~/.profile.

```
alias iniscan='docker run -v $PWD:/app --rm dockerizedphp/iniscan'
```

If you don't have set the alias, use this command to run the container: 

```
docker run --rm -v /path/to/app:/app dockerizedphp/iniscan [some arguments for iniscan]
```

For example:

```
docker run --rm -v /path/to/app:/app dockerizedphp/iniscan run 
```
