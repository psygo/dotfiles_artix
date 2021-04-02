#!/bin/bash

# A script for opening a list of links with the Brave browser.
# The links should be one-liners in a text file.
# Exit codes:
#
# 1. `brave` couldn't open the links.

# @required
# A text-based file with a list of links.
FILE=$1

COUNTER=0
while read LINK
do
  [ "${COUNTER}" -eq 0 ] && brave --new-window "${LINK}" \
                         || brave              "${LINK}" \
                         || exit               1
  ((COUNTER++))
done < ${FILE}

exit 0
