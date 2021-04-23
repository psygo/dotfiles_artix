#!/bin/bash

TODAY=$(date +"%d-%m-%Y")
COMPLETE_PATH="${HOME}/TimeBlocking/${TODAY}.md"

touch ${COMPLETE_PATH}

nvim ${COMPLETE_PATH}

exit 0
