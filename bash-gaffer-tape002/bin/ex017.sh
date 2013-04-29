#!/bin/bash
#
# A script to read each line in a file as a separate argument
#
found=0
while read line; do
  c=$(echo "$line" | perl -ne '@words=split(/\s+/,$_); if($#words > 2) { print STDOUT $words[2]; }')
  if [[ -z $c ]]; then
    continue 
  fi

  if [[ $c == "ColumnC_row2" ]]; then
    found=1
  fi

  if [[ $found == 1 ]]; then
    echo $line
  fi
done < input_file.txt
