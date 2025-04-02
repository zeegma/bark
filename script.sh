#!/bin/bash

# Configure Git
git config --global user.name "GitHub Actions Bot"
git config --global user.email "actions@github.com"

# Update submodules
git submodule update --remote --recursive

# Commit if there are changes
if git diff --quiet; then
  echo "No changes detected"
  exit 0
else
  git add .
  git commit -m "Auto-update submodules [skip ci]"
  git push
fi