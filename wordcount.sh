#!/bin/bash
if [ $# -ne 1 ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi
directory="$1"
if [ ! -d "$directory" ]; then
  echo "Error: Directory '$directory' not found."
  exit 1
Fi
total_words=0
for file in "$directory"/*.txt; do
  ((total_words += $(wc -w < "$file")))
done
echo "Total word count for all '.txt' files in '$directory': $total_words"

