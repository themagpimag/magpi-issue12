#!/bin/bash
#
# A script to create a test_file.txt 
# containing the text given in this script.
# 
cat > input_file.txt <<EOF
ColumnA_row1 ColumnB_row1 ColumnC_row1 ColumnD_row1
ColumnA_row2 ColumnB_row2 ColumnC_row2 ColumnD_row2

ColumnA_row3 ColumnB_row3 ColumnC_row3 ColumnD_row3
ColumnA_row4 ColumnB_row4 ColumnC_row4 ColumnD_row4
EOF
