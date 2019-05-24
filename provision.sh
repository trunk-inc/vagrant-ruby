#!/bin/bash -l

BASE=/home/vagrant
cd $BASE
sudo apt-get update
sudo apt-get install -y git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev

curl -sL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash - >&1
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $BASE/.bash_profile
echo 'eval "$(rbenv init -)"' >> $BASE/.bash_profile

source $BASE/.bash_profile

rbenv install 2.6.3
rbenv global 2.6.3
rbenv rehash
