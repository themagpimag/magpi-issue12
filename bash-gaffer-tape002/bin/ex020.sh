#!/bin/bash
#

fun="sqrt(x)"

# Now the gnuplot command
python <<EOF
import math
from math import *
divisions=10
for i in xrange(1,divisions+1):
  x = float(i)/divisions
  y = $fun
  print "$fun: x = %f, y = %f" % (x,y)
EOF

# Use the gnuplot return status and return it
exit $?
