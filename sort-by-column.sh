#!/bin/bash
#
# Author: James C. Franco
# Date: 2018-07-12
# 
# Description: Sort a CSV file by any specified column. CSV data does not include surrounding quotes.
# Usage: ./sort-by-column colNumber fileName.csv
# 
# 

colNumber=$1
awk -v temp=$colNumber -F, '{ print $temp "," $0 }' $2 | sed -e 's/^ //' | sort | cut -d',' -f 2-
