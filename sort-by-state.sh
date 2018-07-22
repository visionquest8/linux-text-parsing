#/bin/bash

# Author: James C. Franco
# Date: 2018-07-12
#
# Usage: ./sort-by-state filename
#
# Address file format...
# firstName lastName, streetAddress, city, stateAbbreviation, zip[(5)], phone[(999) 999-9999]

awk -F, '{ print $4 "," $0 }' $1 | sed -e 's/^ //' | sort | cut -d',' -f 2-
