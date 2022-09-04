# My Vim and Zsh Setup

### Requirements

- git
- kitty
- tmux
- nvim
- task
- zsh
- ohmyzsh
- [zsh spaceship prompt](https://github.com/spaceship-prompt/spaceship-prompt)
- zsh-syntax-highlighting

### Installation

```bash
$ git clone https://github.com/frankfaustino/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
```

### Create symlinks
```bash
# This symlink script will delete and recreate the symlinks in your HOME directory.
$ ./link_dotfiles
```

### ——— File Structure ———

```bash
.
├── README.md
├── kitty
│   ├── kitty.conf
│   └── macos-launch-services-cmdline
├── link_dotfiles
├── nvim
│   ├── config.lua
│   ├── init.lua
│   ├── keymap.lua
│   └── plugins.lua
├── task
│   └── taskrc
├── tmux
│   ├── tmux.conf
│   ├── tmux_dark_theme.conf
│   └── tmux_light_theme.conf
└── zsh
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

[[![forthebadge](https://forthebadge.com/images/badges/its-not-a-lie-if-you-believe-it.svg)](https://forthebadge.com)
