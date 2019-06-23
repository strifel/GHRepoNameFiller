#!/usr/bin/env bash

# Setup
mkdir bin
rm bin/*

# Firefox build
## Getting source files
mkdir firefox/icons/
cp icons/* firefox/icons/
cp src/fill.js firefox/fill.js
## Zipping
zip -r bin/firefox.zip firefox/*
## Cleaning
rm -r firefox/icons/
git clean -f

# Chrome build
## Getting source files
cp src/fill.js chrome/fill.js
## Do not zip, because it needs to be zipped in chrome
mkdir bin/chrome/
cp chrome/* bin/chrome/
## Cleaning
git clean -f
