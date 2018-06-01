# My dotvim Setup

### Requirements

git — v2.13.1  
vim — v8.1.22  
MacVim

### Installation

```
$ git clone https://github.com/lefrenk/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
```

### Register and clone the Vim bundles
```
# Register and clone the submodules.

$ git submodule init
$ git submodule update
```

### Create symlinks
```
$ bash symlinkdafiles.sh
```
_NOTE: Running the symlinkdafiles script will delete (if they already exist) and recreate the symlinks in HOME._

### ——— Useful Stuff ———

### Update all submodules at once
```
$ cd ~/.dotfiles
$ git submodule foreach git pull origin master
```

### Adding new submodules
```
# Add the submodule.

$ git submodule add git://example.com/remote/path/to/repo.git vim/plugged/submodule

# Stage && commit the changes.

$ git add vim/plugged/submodule && git commit -m "Add a new submodule: submodule"
```

### Removing a submodule
```
# Delete the relevant section from the .gitmodules file.
# Stage the .gitmodules changes.

$ git add .gitmodules

# Delete the relevant section from .git/config.
# Delete the submodule from git index and git's modules directory.

$ git rm --cached path_to_submodule
$ rm -rf .git/modules/path_to_submodule

# Commit changes

$ git commit -m "Removed submodule"

# Delete the now untracked submodule files

$ rm -rf path_to_submodule
```
