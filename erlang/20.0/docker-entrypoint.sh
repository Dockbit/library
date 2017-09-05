#!/bin/bash
source /bin/dockbit_bootstrap.sh

if [ -f .erlang-version ]; then
  ERLANG_VERSION=`cat .erlang-version`
else
  ERLANG_VERSION="20.0"
fi
. $HOME/.kerl/$ERLANG_VERSION/activate

run_user
