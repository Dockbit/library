#!/bin/bash
source /bin/dockbit_bootstrap.sh

# Configure credentials
cat << EOF > $HOME/.netrc
machine api.heroku.com
  login dockbit
  password $DOCKBIT_HEROKU_TOOLBELT_API_KEY
machine git.heroku.com
  login dockbit
  password $DOCKBIT_HEROKU_TOOLBELT_API_KEY
EOF
chmod 0600 $HOME/.netrc

run heroku git:remote --app $DOCKBIT_HEROKU_TOOLBELT_APP_NAME
run_user
