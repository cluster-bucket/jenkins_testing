#!/bin/bash
# ---------------------------------------------------------------------------
# test.sh - Test files

# Copyright 2018, boston,,, <boston@boston-VirtualBox>
# All rights reserved.

# Usage: test.sh [-h|--help]

# Revision history:
# 2018-08-08 Created by new_script ver. 3.3
# ---------------------------------------------------------------------------

PROGNAME=${0##*/}
VERSION="0.1"

clean_up() { # Perform pre-exit housekeeping
  return
}

error_exit() {
  echo -e "${PROGNAME}: ${1:-"Unknown Error"}" >&2
  clean_up
  exit 1
}

graceful_exit() {
  clean_up
  exit
}

signal_exit() { # Handle trapped signals
  case $1 in
    INT)
      error_exit "Program interrupted by user" ;;
    TERM)
      echo -e "\n$PROGNAME: Program terminated" >&2
      graceful_exit ;;
    *)
      error_exit "$PROGNAME: Terminating on unknown signal" ;;
  esac
}

usage() {
  echo -e "Usage: $PROGNAME [-h|--help]"
}

help_message() {
  cat <<- _EOF_
  $PROGNAME ver. $VERSION
  Test files

  $(usage)

  Options:
  -h, --help  Display this help message and exit.

_EOF_
  return
}

# Trap signals
trap "signal_exit TERM" TERM HUP
trap "signal_exit INT"  INT



# Parse command-line
while [[ -n $1 ]]; do
  case $1 in
    -h | --help)
      help_message; graceful_exit ;;
    -* | --*)
      usage
      error_exit "Unknown option $1" ;;
    *)
      echo "Argument $1 to process..." ;;
  esac
  shift
done

# Main logic
cd project
# npm run test

npm run test-hello
# RETVAL=$?
# [ $RETVAL -eq 0 ] && echo Success
# [ $RETVAL -ne 0 ] && error_exit "test-hello failed"

npm run test-goodbye
# RETVAL=$?
# [ $RETVAL -eq 0 ] && echo Success
# [ $RETVAL -ne 0 ] && echo error_exit "test-goodbye failed"


graceful_exit

