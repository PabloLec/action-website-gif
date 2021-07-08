#!/bin/bash
set -o errexit -o pipefail -o nounset

pwd
echo "______________________"
ls
echo "______________________"

python3 /app/script.py || echo

echo "______________________"

cat geckodriver.log

cp /app/image.gif /github/workspace/
