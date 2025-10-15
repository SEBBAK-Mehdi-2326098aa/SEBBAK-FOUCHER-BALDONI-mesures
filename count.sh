#!/bin/bash
DIR="${1:-.}"
TOTAL=0
for f in $(find "$DIR" -type f); do
  L=$(wc -l < "$f")
  TOTAL=$((TOTAL + L))
done
echo "$TOTAL"
