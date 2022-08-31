#!/bin/zsh

function relink() {
  if [ -f $1 ]; then
    rm $1
    echo "deleted file $1"
  fi
  ln -s $2 $1
  echo "linked $2 to $1"
}

cd ~

relink ~/.zshenv ~/.dotfiles/zsh/zshenv
relink ~/.zshrc ~/.dotfiles/zsh/zshrc
relink ~/.vimrc ~/.dotfiles/vim/vimrc
relink ~/.config/nvim/init.lua ~/.dotfiles/nvim/init.lua
relink ~/.config/nvim/lua/keymap.lua ~/.dotfiles/nvim/keymap.lua
relink ~/.config/nvim/lua/config.lua ~/.dotfiles/nvim/config.lua
relink ~/.config/nvim/lua/plugins.lua ~/.dotfiles/nvim/plugins.lua

echo "dotfiles update complete"

