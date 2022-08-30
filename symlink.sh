#!/bin/zsh

function relink() {
  if [ -d $1 ] || [ -f $1 ]; then
    rm $1
    echo "deleted $1"
  fi
  ln -s $2 $1
  echo "linked $2 to $1"
}

cd ~

relink ~/.zshenv ~/.dotfiles/zsh/.zshenv
relink ~/.zshrc ~/.dotfiles/zsh/.zshrc
relink ~/.vimrc ~/.dotfiles/vim/vimrc
relink ~/.vim ~/.dotfiles/vim/
relink ~/.config/nvim/init.vim ~/.dotfiles/nvim/init.vim

echo "dotfiles update complete"
