#!/usr/bin/env bash

set -e

export NVM_VERSION=0.33.4
export NODE_VERSION=6.11.3
export PATH=$DOCKBIT_CWD/node_modules/.bin:$HOME/.nvm/bin:$PATH
echo 'export PATH=$DOCKBIT_CWD/node_modules/.bin:$HOME/.nvm/bin:$PATH' >> $HOME/.bash_profile

curl --silent -o- https://raw.githubusercontent.com/creationix/nvm/v${NVM_VERSION}/install.sh | bash

echo 'export NVM_DIR="$HOME/.nvm"' >> $HOME/.bash_profile
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> $HOME/.bash_profile

# Npmrc
echo "cache = /dockbit/npm" >> $HOME/.npmrc
chmod 600 $HOME/.npmrc

# NVM
source $HOME/.bash_profile && \
  nvm install 0.10.46       && npm --quiet install --global yarn avn avn-nvm bower && \
  nvm install 0.12.15       && npm --quiet install --global yarn avn avn-nvm bower && \
  nvm install 5.12.0        && npm --quiet install --global yarn avn avn-nvm bower && \
  nvm install 6.5.0         && npm --quiet install --global yarn avn avn-nvm bower && \
  nvm install 6.8.0         && npm --quiet install --global yarn avn avn-nvm bower && \
  nvm install 7.10.0        && npm --quiet install --global yarn avn avn-nvm bower && \
  nvm install 8.5.0         && npm --quiet install --global yarn avn avn-nvm bower && \
  nvm install $NODE_VERSION && npm --quiet install --global yarn avn avn-nvm bower

nvm alias default $NODE_VERSION

# AVN
avn setup

# Cleanup
rm -fr /tmp/npm*
