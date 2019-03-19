#!/bin/bash

function relink() {
  rm $1
  ln -s $2 $1
}

cd ~

relink .bash_profile ~/.dotfiles/bash/bash_profile
relink .bashrc ~/.dotfiles/bash/bashrc
relink .vimrc ~/.dotfiles/vim/vimrc
relink .gvimrc ~/.dotfiles/vim/gvimrc
relink .vim ~/.dotfiles/vim
relink .zshrc ~/.dotfiles/zsh/zshrc

echo "Dotfiles update complete"
