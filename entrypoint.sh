#!/bin/bash
set -o errexit -o pipefail -o nounset

python3 /app/script.py

cat /app/geckodriver.log

cp /app/image.gif /github/workspace/
