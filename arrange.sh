#!/bin/bash

if [ ! -d "files" ]; then
  exit 1
fi

for file in files/*; do
  if [ -f "$file" ]; then
    filename=$(basename "$file")
    first="${filename:0:1}"
    lower=$(echo "$first" | tr 'A-Z' 'a-z')

    if [[ "$lower" =~ [a-z] ]] && [ -d "$lower" ]; then
      mv "$file" "$lower/"
    fi
  fi
done
