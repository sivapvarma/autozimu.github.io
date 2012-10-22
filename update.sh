#!/usr/bin/env zsh
# description: update pages on github

git push
ruhoh compile
cp -r compiled/* github/
cd github/
git add *
git commit -a -m "commit"
git push
