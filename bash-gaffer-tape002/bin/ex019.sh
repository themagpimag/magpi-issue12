#!/bin/bash
#
# A script to produce a png file of one or more functions of x
#

# At least one argument must be given as a function of x

usage() {
  echo "Usage $0 <f(x)>"
  echo " where f could be sin or cos or nested.  For example, sin(x) or cos(x) or sin(cos(x))"
  echo " The function must be given in brackets, $0 \"sin(x)\""
}

if [[ -z $1 ]]; then
  usage
  exit 1
fi

if [[ $1 != *"(x)"* ]]; then
  usage
  exit 2
fi

# Now the gnuplot command
gnuplot -persist <<EOF
set terminal pngcairo 
set output 'function.png'
set key inside right top
set yrange [-1.2:1.2]
set samples 60, 60
plot [-6:6] $1
EOF

# Use the gnuplot return status and return it
exit $?
