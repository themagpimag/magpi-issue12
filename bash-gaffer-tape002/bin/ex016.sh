#!/bin/bash
#
# A script to read each line in a file as a separate argument
#
while read line; do
  c=$(echo "$line" | perl -ne '@words=split(/\s+/,$_); print STDOUT $words[2];')
  d=$(echo "$line" | perl -ne '@words=split(/\s+/,$_); print STDOUT $words[3];')
  echo $c $d
done < input_file.txt
