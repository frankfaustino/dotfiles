# My Vim and Zsh Setup

### Requirements

zsh (comes with MacOS Catalina and later versions)
ohmyzsh
https://github.com/spaceship-prompt/spaceship-prompt
brew install zsh-syntax-highlighting
Python 3.10
nvm
homebrew

Git — v2.20.1  
Vim — v8.1.22  
MacVim

### Installation

```bash
$ git clone https://github.com/frankfaustino/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
```

### Register and clone the Vim plugins
```bash
$ git submodule init
$ git submodule update
```

### Create symlinks
```bash
# This symlink script will delete and recreate the symlinks in your HOME directory.
$ sh symlink.sh
```

### ——— Useful Stuff ———

### Update all submodules simultaneously
```bash
$ cd ~/.dotfiles
$ git submodule foreach git pull origin master
```

### Adding new submodules
```bash
# Add the submodule.
$ git submodule add git://example.com/remote/path/to/repo.git vim/plugged/submodule

# Stage && commit the changes.
$ git add vim/plugged/submodule && git commit -m "Add submodule"
```

### Removing a submodule
```bash
# Delete the relevant section from the .gitmodules file.

# Stage the .gitmodules changes.
$ git add .gitmodules

# Delete the relevant section from .git/config.

# Delete the submodule from git index.
$ git rm --cached path_to_submodule

# Delete submodule in git's modules directory.
$ rm -rf .git/modules/path_to_submodule

# Commit changes.
$ git commit -m "Removed submodule"

# Delete the now untracked submodule files.
$ rm -rf path_to_submodule
```

### ——— File Structure ———

```bash
    ~/.dotfiles
    ├── .gitignore
    ├── .gitmodules
    ├── README.md
    ├── symlink.sh
    ├─┬ nvim
    │ └── init.vim
    └─┬ vim
      ├─┬ autoload
      │ └── plug.vim
      ├─┬ plugged
      │ ├── ale
      │ ├── codi.vim
      │ ├── emmet-vim
      │ ├── indentline
      │ ├── nerdcommenter
      │ ├── nerdtree
      │ ├── typescript-vim
      │ ├── vim-airline
      │ ├── vim-airline-themes
      │ ├── vim-fugitive    
      │ ├── vim-instant-markdown
      │ ├── vim-jsx
      │ ├── vim-prettier
      │ ├── vim-searchant
      │ ├── vim-snazzy
      │ ├── vim-surround
      │ └── yajs.vim
      └── vimrc
```

```
      .       .    )        .           .
   .       *             .         .
               .                      .
   .       .                   .
                                *        .
      .   '               .              .
              _.---._   .            .     *
    *       .'       '.
        _.-~===========~-._
       (___________________)       .   *
  __  .'     \_______/   .'  ______        __
    |              .'  .'   |      |      |  |
    |             '         |      |      |  |
    |                       |      |   ___|  |_
  __|_______________________|__..--~~~~   ~--.

```

[![forthebadge](https://forthebadge.com/images/badges/its-not-a-lie-if-you-believe-it.svg)](https://forthebadge.com)
