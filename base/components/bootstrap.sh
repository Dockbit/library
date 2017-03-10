#!/bin/bash
#
# Dockbit Bootstrap
#
set -e
trap cleanup EXIT

[ -f $HOME/.bash_profile ] && source $HOME/.bash_profile

# Variables
VERBOSE=1

#
# Cleans up on exit.
#
function cleanup() {
  # not yet doing anything
  return 0
}

#
# Prints a single command, executes and times it.
#
function run() {
  if [ $VERBOSE -eq 1 ]; then
    echo "\$ $*"
    eval "$@"
  else
    eval "$@" > /dev/null 2>&1
  fi
}

#
# Runs passed commands
#
function run_user() {
  run "$@"
}
