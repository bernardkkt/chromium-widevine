#!/bin/bash
set -e
set -x

# Set up environment
which wget || sudo apt install -y wget
which curl && sudo apt remove -y curl || true

# Run test
bash $@ -o ./widevine.zip

# Check file existence
ls ./widevine.zip
