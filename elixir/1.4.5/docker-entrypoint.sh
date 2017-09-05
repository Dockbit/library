#!/bin/bash
source /bin/dockbit_bootstrap.sh

# Load Erlang
if [ -f .erlang-version ]; then
  ERLANG_VERSION=`cat .erlang-version`
else
  ERLANG_VERSION=`kerl list installations | head -n 1 | cut -d" " -f1`
fi
. $HOME/.kerl/$ERLANG_VERSION/activate

if [ -f .elixir-version ]; then
  ELIXIR_VERSION=`cat .elixir-version`
else
  ELIXIR_VERSION="1.4.5"
fi
kiex use $ELIXIR_VERSION

if [ -f mix.lock ]; then
  hacher get -k hex -f mix.lock /
  run mix deps.get
  hacher set -k hex -f mix.lock $HOME/.hex
fi

run_user
