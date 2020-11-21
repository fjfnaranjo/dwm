#!/bin/sh
docker build -t builder-dwm .
docker run --rm -ti -v "$HOME/.local:/host/local" -v "$(pwd):/host/src" -w /host/src -u "$UID:$GROUPS" builder-dwm
