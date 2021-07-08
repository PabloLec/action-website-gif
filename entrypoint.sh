#!/bin/bash
set -o errexit -o pipefail -o nounset

pwd
echo "______________________"
ls
echo "______________________"

export HOME=/root

python3 /app/script.py || echo

export HOME=/github/home 

echo "______________________"

cat geckodriver.log
