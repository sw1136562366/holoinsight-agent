#!/usr/bin/env bash
set -e

# docs: Build agent docker image for current arch locally

cd `dirname $0`/../..

if [ -z "$tag" ]; then
  tag=latest
fi

docker buildx build \
  --platform linux/amd64 \
  -f ./scripts/docker/Dockerfile \
  --load \
  -t holoinsight/agent:$tag .
