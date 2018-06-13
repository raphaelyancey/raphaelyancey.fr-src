#!/usr/bin/env bash
git checkout gh-pages
jekyll build
git add -A
git commit -am "Updated built files"
git push origin gh-pages
git checkout master