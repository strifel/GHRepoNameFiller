#!/usr/bin/env bash

echo Starting Building...
# Setup
mkdir bin
rm -r bin/*

# Firefox build
## Getting source files
mkdir firefox/icons/
cp icons/* firefox/icons/
cp src/fill.js firefox/fill.js
## Zipping
cd firefox
zip -r ../bin/firefox.zip *
cd ..
## Cleaning
rm -r firefox/icons/
git clean -f
echo Build firefox to bin/firefox.zip

# Chrome build
## Getting source files
cp src/fill.js chrome/fill.js
## Do not zip, because it needs to be zipped in chrome
mkdir bin/chrome/
cp chrome/* bin/chrome/
## Cleaning
git clean -f
echo Build Chrome to bin/chrome

echo Build finished.
