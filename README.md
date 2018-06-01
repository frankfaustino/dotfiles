# My dotvim Setup

### Requirements

git 2.13.1  
vim 8.1.22  
MacVim

### Installation

```
$ git clone https://github.com/lefrenk/dotfiles.git ~/.dotfiles
```

### Register and clone the Vim bundles
```
# Register the submodules
$ git submodule init
# Clone the submodules
$ git submodule update
```

### Create symlinks
```
$ bash symlinkdafiles.sh
```
_NOTE: Running the symlinkdafiles script will delete (if they already exist) and recreate the symlinks in HOME._

### Update all submodules at once
```
$ cd ~/.dotfiles
$ git submodule foreach git pull origin master
```

### When adding new submodules
```
# Add the submodule
$ git submodule add git://example.com/remote/path/to/repo.git vim/plugged/submodule
# Stage && commit the changes
$ git add vim/plugged/submodule
$ git commit -m "Add a new submodule: submodule"
```
