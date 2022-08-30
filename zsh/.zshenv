PYTHON=~/.pyenv/shims/python
# PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# nvm and nvm bash_completion
NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# pyenv && virtualenv
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# jEnv is a command line tool to help you forget how to set the JAVA_HOME environment variable
JENV="$HOME/.jenv/bin"
eval "$(jenv init -)"

# Alternative location for .zshenv, .zprofile, .zshrc
ZDOTDIR=~/.dotfiles/zsh

# For pip install cryptography
CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"
LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
# For pip install confluent kafka
C_INCLUDE_PATH=/opt/homebrew/Cellar/librdkafka/1.8.2/include/
LIBRARY_PATH=/opt/homebrew/Cellar/librdkafka/1.8.2/lib

export PATH=$JENV:$MYSQL_CLIENT:$OPENSSL:$MYSQLCLIENT_CFLAGS:$MYSQLCLIENT_LDFLAGS:$CPPFLAGS:$LDFLAGS:$C_INCLUDE_PATH:$LIBRARY_PATH:$PYTHON:$PATH

. "$HOME/.cargo/env"
