#!/usr/bin/env bash

readonly name=newsboat
docker build -t $name .
docker run -it \
  --name newsboat \
  $name \
  /bin/sh

# TODO: solve permissions issue
# --mount type=bind,src="$(pwd)"/data,dst=/home/newsboat/.local/share/newsboat \
