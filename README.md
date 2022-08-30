# My Vim and Zsh Setup

### Requirements

- git v2.32.1 
- nvim v0.7.2 
- vim v8.2  
- zsh (comes with MacOS Catalina and later versions)
- [zsh spaceship prompt](https://github.com/spaceship-prompt/spaceship-prompt)
- ohmyzsh
- brew install zsh-syntax-highlighting

### Installation

```bash
$ git clone https://github.com/frankfaustino/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
```

### Create symlinks
```bash
# This symlink script will delete and recreate the symlinks in your HOME directory.
$ sh symlink.sh
```

### ——— File Structure ———

```bash
    ~/.dotfiles
    ├── .gitignore
    ├── README.md
    ├── symlink.sh
    ├─┬ iterm
    │ ├── com.googlecode.iterm2.plist
    │ └── material-design-colors
    ├─┬ nvim
    │ └── init.vim
    ├─┬ vim
    │ └── vimrc
    └─┬ zsh
      ├── zprofile
      ├── zshenv
      └── zshrc
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
