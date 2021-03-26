#!/bin/bash

TITLE=$1
DOUBLE_LINE="\n\n"

touch "${TITLE}.md" || exit 1

printf "# ${TITLE}${DOUBLE_LINE}Tags: ${DOUBLE_LINE}\n" >> "${TITLE}.md" || exit 2

nvim "${TITLE}.md"

exit 0
