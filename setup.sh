#!/bin/bash -x

ln -s ~/dotfiles/_gitconfig ~/.gitconfig
ln -s ~/dotfiles/_gitignore ~/.gitignore
ln -s ~/dotfiles/_tmux.conf ~/.tmux.conf
mkdir ~/.config/
ln -s ~/dotfiles/nvim ~/nvim
ln -s ~/dotfiles/fish ~/nvim

cp -i ~/dotfiles/_gitconfig.local.example ~/.gitconfig.local
