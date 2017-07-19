#!/usr/bin/env bash

set -e

# Sorry Ubuntu, but Dash isn't going to cut it
ln -sf /bin/bash /bin/sh

# Create Dockbit user with ID 48484 and don't assign a password
export USER=dockbit
export HOMEDIR=/home/$USER
export SHELL=/bin/bash
if [ ! $(getent passwd $USER) ]; then
  useradd --uid 48484 --shell $SHELL --create-home --home-dir $HOMEDIR $USER
fi

# User bins
mkdir -p $HOMEDIR/.local/bin

# Dockbit configuration
if [ ! -f $HOMEDIR/.bash_profile ]; then
  echo 'export DOCKBIT_CWD=/dockbit/checkout' >> $HOMEDIR/.bash_profile
  echo "export PATH=$HOMEDIR/.local/bin:\$PATH" >> $HOMEDIR/.bash_profile
  echo "export USER=$USER" >> $HOMEDIR/.bash_profile
  echo "export SHELL=$SHELL" >> $HOMEDIR/.bash_profile
  echo 'export TERM=linux' >> $HOMEDIR/.bash_profile
fi

# Change ownership
chown -R dockbit.dockbit $HOMEDIR/.bash_profile $HOMEDIR/.local
