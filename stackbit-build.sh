#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://localhost:8092/init.js 5fd771d9b9f649774ed8f9f5

echo "stackbit-build.sh: finished build"
