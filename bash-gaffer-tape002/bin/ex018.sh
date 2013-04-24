#!/bin/bash
#
# A script to produce a png file of a sine function
#
gnuplot -persist <<EOF
set terminal pngcairo 
set output 'sin.png'
set key inside right top
set yrange [-1.2:1.2]
set samples 60, 60
plot [-6:6] sin(x)
EOF
