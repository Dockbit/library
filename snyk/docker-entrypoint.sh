#!/bin/bash
source /bin/dockbit_bootstrap.sh

# Configure credentials
snyk auth $DOCKBIT_SNYK_API_KEY

run_user
