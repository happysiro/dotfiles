#!/bin/bash -x

ln -s ~/dotfiles/_gitconfig ~/.gitconfig
ln -s ~/dotfiles/_gitignore ~/.gitignore
ln -s ~/dotfiles/_tmux.conf ~/.tmux.conf
mkdir ~/.config/
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/fish ~/.config/fish
ln -s ~/dotfiles/alacritty ~/.config/alacritty

cp -i ~/dotfiles/_gitconfig.local.example ~/.gitconfig.local
