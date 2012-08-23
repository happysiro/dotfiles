#!/bin/bash

# ex)
# vi ~/.bash_profile
#
# alias rake-dev='~/dotfiles/scripts/rake-dev.sh'

echo "[START] rake $1 RAILS_ENV=development"
rake $1 RAILS_ENV=development
echo "[END]   rake $1 RAILS_ENV=development"

echo "[START] rake $1 RAILS_ENV=test"
rake $1 RAILS_ENV=test
echo "[END]   rake $1 RAILS_ENV=test"

