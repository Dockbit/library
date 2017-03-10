#!/bin/bash
source /bin/dockbit_bootstrap.sh

# Configure credentials
echo "{ \"$CONVOX_HOST\": \"$DOCKBIT_CONVOX_API_KEY\" }" > $HOME/.convox/auth
echo $CONVOX_HOST > $HOME/.convox/host
chmod 0600 $HOME/.convox/*

run_user
