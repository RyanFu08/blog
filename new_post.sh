#!/bin/bash

# Check if a title is provided
if [ -z "$1" ]; then
  echo "Usage: $0 'Post Title'"
  exit 1
fi

# Generate post filename
title=$1
filename="_posts/$(date +%Y-%m-%d)-$(echo $title | tr ' ' '-' | tr '[:upper:]' '[:lower:]').md"

# Create post file with front matter
cat <<EOF > $filename
---
layout: post
title: "$title"
date: $(date +%Y-%m-%d)
categories: [default]
---
EOF

echo "New post created: $filename"
