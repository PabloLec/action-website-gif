#!/bin/bash
set -o errexit -o pipefail -o nounset

python3 /app/script.py

##cat geckodriver.log

cp image.gif /github/workspace/
