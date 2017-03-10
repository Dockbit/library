#!/bin/bash
source /bin/dockbit_bootstrap.sh

# AWS Credentials
export AWS_ACCESS_KEY_ID="$DOCKBIT_AWS_EB_KEY"
export AWS_SECRET_ACCESS_KEY="$DOCKBIT_AWS_EB_SECRET"

run_user
