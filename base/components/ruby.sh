#!/usr/bin/env bash

set -e

export RUBY_VERSION=2.3.2

git clone https://github.com/sstephenson/rbenv.git $HOME/.rbenv
git clone https://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $HOME/.bash_profile
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> $HOME/.bash_profile
echo 'eval "$(rbenv init -)"' >> $HOME/.bash_profile

source $HOME/.bash_profile && \
rbenv install -v 2.1.7 && \
rbenv install -v 2.1.8 && \
rbenv install -v 2.2.2 && \
rbenv install -v 2.2.3 && \
rbenv install -v 2.2.4 && \
rbenv install -v 2.3.0 && \
rbenv install -v 2.3.1 && \
rbenv install -v $RUBY_VERSION && \
rbenv global $RUBY_VERSION

echo 'gem: --no-document' > $HOME/.gemrc
gem install bundler
rbenv shell 2.1.7 && gem install bundler
rbenv shell 2.1.8 && gem install bundler
rbenv shell 2.2.2 && gem install bundler
rbenv shell 2.2.3 && gem install bundler
rbenv shell 2.2.4 && gem install bundler
rbenv shell 2.3.0 && gem install bundler
rbenv shell 2.3.1 && gem install bundler

# Cleanup
rm -fr /tmp/ruby-build*
