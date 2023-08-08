#!/bin/bash

set -euo pipefail

docker build -t wem2ogg .
docker run -it --rm -v "$PWD":/app wem2ogg $@
