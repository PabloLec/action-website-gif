#!/bin/bash
set -o errexit -o pipefail -o nounset

TOKEN=${GITHUB_TOKEN}

python3 script.py

##cat geckodriver.log

echo "${GITHUB_TOKEN}"
