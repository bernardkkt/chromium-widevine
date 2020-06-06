#!/bin/bash
set -e
set -x

# Set up environment
which curl || sudo apt install -y curl
which wget && sudo apt remove -y wget || true

# Run test
bash $@ -o ./widevine.zip

# Check file existence
ls ./widevine.zip
