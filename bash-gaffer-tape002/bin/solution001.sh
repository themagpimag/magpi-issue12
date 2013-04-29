#!/bin/bash
#
# W. H. Bell
# A program to gzip all of the files in the present working directory.
# The program does not consider gzip files which have the .gz ending.
#
for file in $(find $PWD -maxdepth 1 -type f | grep -v .gz); do
  gzip $file
done
