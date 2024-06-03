#!/bin/bash

# Check if a commit message was provided
if [ -z "$1" ]; then
  echo "Usage: $0 'Commit message'"
  exit 1
fi

# Run git commands
git add .
git commit -m "$1"
git push
