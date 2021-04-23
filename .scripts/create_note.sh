#!/bin/bash

TITLE=$1
DOUBLE_LINE="\n\n"
COMPLETE_PATH="${HOME}/Notes/${TITLE}.md"

touch "${COMPLETE_PATH}" || exit 1

printf "# ${TITLE}${DOUBLE_LINE}Tags: ${DOUBLE_LINE}\n" \
  >> "${COMPLETE_PATH}" || exit 2

nvim "${COMPLETE_PATH}"

exit 0
