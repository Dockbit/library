#!/bin/bash
source /bin/dockbit_bootstrap.sh

# Set Python version for gcloud
source $HOME/.bash_profile && pyenv global 2.7.11

# Google Cloud Credentials
export GOOGLE_CLOUD_EMAIL="$DOCKBIT_GOOGLE_CLOUD_SERVICE_ACCOUNT_ID"
export GOOGLE_CLOUD_PROJECT="$DOCKBIT_GOOGLE_CLOUD_PROJECT_ID"
mkdir -p ~/.config/gcloud && echo $DOCKBIT_GOOGLE_CLOUD_CREDENTIALS_FILE > ~/.config/gcloud/key.json && chmod 600 ~/.config/gcloud/key.json

# Activate service account credentials
run gcloud auth activate-service-account $DOCKBIT_GOOGLE_CLOUD_SERVICE_ACCOUNT_ID --key-file ~/.config/gcloud/key.json --project $DOCKBIT_GOOGLE_CLOUD_PROJECT_ID

run_user
