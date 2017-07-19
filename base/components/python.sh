#!/usr/bin/env bash

set -e

export PYTHON_VERSION=3.4.4
export PYTHON_PIP_VERSION=8.1.1
export PYTHON_VIRTUALENV_VERSION=15.1.0

# Install & Configure pyenv
git clone https://github.com/yyuu/pyenv.git $HOME/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $HOME/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> $HOME/.bash_profile
echo 'eval "$(pyenv init -)"' >> $HOME/.bash_profile

source $HOME/.bash_profile

# Install Python versions
pyenv install -v 2.7.11 && \
pyenv install -v $PYTHON_VERSION && \
pyenv global $PYTHON_VERSION

# Upgrade Pip version
pyenv shell 2.7.11          && pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION && \
pyenv shell $PYTHON_VERSION && pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION

# Install Virtualenv
pyenv shell 2.7.11          && pip install --no-cache-dir virtualenv==$PYTHON_VIRTUALENV_VERSION && \
pyenv shell $PYTHON_VERSION && pip install --no-cache-dir virtualenv==$PYTHON_VIRTUALENV_VERSION

# Install Scons
pyenv shell 2.7.11          && pip install --no-cache-dir scons && \
pyenv shell $PYTHON_VERSION && pip install --no-cache-dir scons

# Cleanup
rm -fr /tmp/python-build*

