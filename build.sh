#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: $0 <version>"
  exit 1
fi
docker run -it --rm --privileged -v ~/.docker:/root/.docker -v $(pwd):/data homeassistant/amd64-builder -t . --homeassistant-machine "$1"=intel-nuc -d mtweten --docker-login
