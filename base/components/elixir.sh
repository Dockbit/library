#!/usr/bin/env bash

set -e

export KIEX_VERSION=master
export ELIXIR_VERSION=1.4.5

# Install Kiex and execute initial setup
curl -sSL https://raw.githubusercontent.com/taylor/kiex/${KIEX_VERSION}/install | bash -s
echo 'test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"' >> $HOME/.bash_profile

# Load Erlang
source $HOME/.bash_profile && \
ERLANG_VERION=`kerl list installations | head -n 1 | cut -d" " -f1` && \
source $HOME/.kerl/${ERLANG_VERION}/activate

# Build Elixir and set default version
kiex install 1.2.6 && \
kiex install 1.3.4 && \
kiex install $ELIXIR_VERSION && kiex default $ELIXIR_VERSION

# Install Hex
kiex use $ELIXIR_VERSION && mix local.hex --force
kiex use 1.2.6 && mix local.hex --force
kiex use 1.3.4 && mix local.hex --force

# Install rebar3
mix local.rebar --force
