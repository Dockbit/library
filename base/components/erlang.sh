#!/usr/bin/env bash

set -e

export KERL_VERSION=1.5.1
export ERLANG_VERSION=20.0

# Download kerl
curl -o $HOME/.local/bin/kerl https://raw.githubusercontent.com/kerl/kerl/${KERL_VERSION}/kerl && \
chmod 755 $HOME/.local/bin/kerl

# Download rebar
curl -o $HOME/.local/bin/rebar3 https://s3.amazonaws.com/rebar3/rebar3 && \
chmod 755 $HOME/.local/bin/rebar3 && \
ln -sf $HOME/.local/bin/rebar3 $HOME/.local/bin/rebar

cat << EOF > $HOME/.kerlrc
KERL_CONFIGURE_OPTIONS="--without-javac --without-wx"
EOF

# Build Erlang
source $HOME/.bash_profile && \
kerl update releases && \
kerl build $ERLANG_VERSION $ERLANG_VERSION && \
kerl build 19.3 19.3

# Install Erlang
kerl install $ERLANG_VERSION $HOME/.kerl/$ERLANG_VERSION && \
kerl install 19.3 $HOME/.kerl/19.3
