#!/bin/sh

sudo su - vagrant
sudo yum install -y gcc make openssl-devel libffi-devel readline-devel git

RBENV=https://github.com/sstephenson/rbenv.git
RBENV_DIR=/home/vagrant/.rbenv

# install rbenv
if [ ! -d "$RBENV_DIR" ]; then
  git clone $RBENV $RBENV_DIR

  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/vagrant/.bash_profile
  echo 'eval "$(rbenv init -)"' >> /home/vagrant/.bash_profile
  exec $SHELL -l
fi

RBENV_BUILD=https://github.com/sstephenson/ruby-build.git
RBENV_BUILD_DIR=/home/vagrant/.rbenv/plugins/ruby-build

# install ruby-build
if [ ! -d "$RBENV_BUILD_DIR" ]; then
  git clone $RBENV_BUILD $RBENV_BUILD_DIR
  rbenv install 2.6.3
  rbenv global 2.6.3
  rbenv rehash
fi

# install ruby
# rbenv install 2.6.3
# rbenv global 2.6.3
# rbenv rehash


# sudo su - vagrant
# 
# sudo apt-get -y update
# sudo apt-get install -y git gcc build-essential libreadline-dev zlib1g-dev
# sudo apt-get install -y libssl-dev
# 
# RBENV=https://github.com/sstephenson/rbenv.git
# RBENV_DIR=/home/vagrant/.rbenv
# 
# # install rbenv
# if [ ! -d "$RBENV_DIR" ]; then
#   git clone $RBENV $RBENV_DIR
# 
#   echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/vagrant/.bash_profile
#   echo 'eval "$(rbenv init -)"' >> /home/vagrant/.bash_profile
#   exec $SHELL -l
# fi
# 
# RBENV_BUILD=https://github.com/sstephenson/ruby-build.git
# RBENV_BUILD_DIR=/home/vagrant/.rbenv/plugins/ruby-build
# 
# # install ruby-build
# if [ ! -d "$RBENV_BUILD_DIR" ]; then
#   git clone $RBENV_BUILD $RBENV_BUILD_DIR
#   rbenv install 2.6.3
#   rbenv global 2.6.3
#   rbenv rehash
# fi
# 
# # install ruby
# # rbenv install 2.6.3
# # rbenv global 2.6.3
# # rbenv rehash
