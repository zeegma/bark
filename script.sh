#!/bin/bash

# Configure Git
git config --local user.name "github-actions [bot]"
git config --local user.email "github-actions[bot]@users.noreply.github.com"

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
