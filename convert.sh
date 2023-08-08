#!/bin/bash

set -euo pipefail

# Find all .wem files that don't have a corresponding .ogg files
files=$(find "$1" -type f -name '*.wem' ! -exec sh -c 'test -f "${1%.*}.ogg"' _ {} \; -print)

for file in $files; do
    # Convert the .wem file to .ogg
    wwtools wem "$file" || true
done
