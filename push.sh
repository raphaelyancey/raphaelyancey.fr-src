#!/usr/bin/env bash
git status

build() {
  git commit -am
  jekyll build
  cd dist
  git add -A
  git commit -am "Update"
  git push origin master
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
