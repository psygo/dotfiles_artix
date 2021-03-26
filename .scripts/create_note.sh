#!/bin/bash

TITLE=$1
TRIPLE_LINE="\n\n\n"

touch "${TITLE}.md" || exit 1

printf "# ${TITLE}${TRIPLE_LINE}Tags: ${TRIPLE_LINE}" >> "${TITLE}.md" || exit 2

exit 0
