#!/bin/bash
set -o errexit -o pipefail -o nounset

TOKEN=${REPO_TOKEN}

python3 script.py

##cat geckodriver.log

echo "${REPO_TOKEN}"
