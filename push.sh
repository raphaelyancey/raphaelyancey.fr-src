#!/usr/bin/env bash

build() {
  jekyll build
  cd dist
  git init
  git remote add origin git@github.com:raphaelyancey/raphaelyancey.fr.git
  git add -A
  git commit -am "Update"
  git push --force origin master
  cd ..
}

echo ""
echo -n "=> Continue? (y/n)"
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    build
else
    exit 0
fi
