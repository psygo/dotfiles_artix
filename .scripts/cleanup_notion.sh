#!/bin/bash

# For more info, check my question on StackOverflow:
# https://unix.stackexchange.com/q/640608/364698

find . -depth -execdir perl-rename 's/ [a-z0-9]{32}//' {} + || exit 1

exit 0
