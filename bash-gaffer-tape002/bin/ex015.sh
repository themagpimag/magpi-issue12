#!/bin/bash
#
# A script to read each line in a file as a separate argument
#
while read line; do
  for word in $line; do
    echo -n "$word "
  done
  echo ""
done < input_file.txt
