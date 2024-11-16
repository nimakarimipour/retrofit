#!/bin/bash

git add .
git commit -m "resolve"
git push
if [[ "$(uname)" == "Darwin" ]]; then
    git rev-parse --verify HEAD | pbcopy && pbpaste
else
    git rev-parse --verify HEAD | xclip -selection clipboard
fi