#!/bin/bash

# create worktree
git worktree add gh-pages

# set git config
git config user.name "Deploy from CI"
git config user.email ""

# navigate to gh-pages
cd gh-pages

# copy files from home to gh-pages
cp -r ../home/* .

# add, commit, and push to gh-pages
git add .
git commit -m "Deploy $GITHUB_SHA to gh-pages"
git push --force origin gh-pages