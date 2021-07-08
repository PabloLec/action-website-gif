#!/bin/bash
set -o errexit -o pipefail -o nounset

python3 script.py

##cat geckodriver.log

cp image.gif /github/workspace/
