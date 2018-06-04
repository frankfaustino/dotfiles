
# My Vim and BASH Setup
[![forthebadge](https://forthebadge.com/images/badges/its-not-a-lie-if-you-believe-it.svg)](https://forthebadge.com)
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

### Requirements

Git — v2.13.1  
Vim — v8.1.22  
MacVim

### Installation

```console
$ git clone https://github.com/lefrenk/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
```

### Register and clone the Vim plugins
```console
# Register and clone the submodules.

$ git submodule init
$ git submodule update
```

### Create symlinks
```console
$ bash symlinkdafiles.sh
```
_NOTE: symlinkdafiles script will delete and recreate the symlinks in HOME._

### ——— Useful Stuff ———

### Update all submodules simultaneously
```console
$ cd ~/.dotfiles
$ git submodule foreach git pull origin master
```

### Adding new submodules
```console
# Add the submodule.

$ git submodule add git://example.com/remote/path/to/repo.git vim/plugged/submodule

# Stage && commit the changes.

$ git add vim/plugged/submodule && git commit -m "Add a new submodule: submodule"
```

### Removing a submodule
```console
# Delete the relevant section from the .gitmodules file.
# Stage the .gitmodules changes.

$ git add .gitmodules

# Delete the relevant section from .git/config.
# Delete the submodule from git index and git's modules directory.

$ git rm --cached path_to_submodule
$ rm -rf .git/modules/path_to_submodule

# Commit changes.

$ git commit -m "Removed submodule"

# Delete the now untracked submodule files.

$ rm -rf path_to_submodule
```

### ——— File Structure ———

```
    ~/.dotfiles
    ├─┬ bash
    │ ├── aliases
    │ ├── bash_profile
    │ └── bashrc
    ├─┬ vim
    │ ├─┬ autoload
    │ │ └── plug.vim
    │ ├── gvimrc
    │ ├─┬ plugged
    │ │ ├── codi.vim
    │ │ ├── dracula
    │ │ ├── indentline
    │ │ ├── nerdcommenter
    │ │ ├── nerdtree
    │ │ ├── oceanic-next
    │ │ ├── vim-instant-markdown
    │ │ ├── vim-jsx
    │ │ ├── vim-prettier
    │ │ └── yajs.vim
    │ └── vimrc
    ├── README.md
    └── symlinkdafiles.sh
```

