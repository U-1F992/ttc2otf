#!/bin/sh

find ./src -name *.ttc -print0 | xargs -0 python3 main.py 2>&1 | tee ./src/log.txt
mv *.otf ./src
