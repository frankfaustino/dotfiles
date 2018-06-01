# My dotvim Setup

### Requirements

git 2.13.1  
vim 8.1.22  
MacVim

### Installation

```
$ git clone https://github.com/lefrenk/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
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

### ——— Useful Stuff ———

### Update all submodules at once
```
$ cd ~/.dotfiles
$ git submodule foreach git pull origin master
```

### Adding new submodules
```
# Add the submodule
$ git submodule add git://example.com/remote/path/to/repo.git vim/plugged/submodule
# Stage && commit the changes
$ git add vim/plugged/submodule
$ git commit -m "Add a new submodule: submodule"
```

### Removing a submodule

1) Delete the relevant section from the `.gitmodules` file.
2) Stage the `.gitmodules` changes
```
git add .gitmodules
```
Delete the relevant section from .git/config.
Run git rm --cached path_to_submodule (no trailing slash).
Run rm -rf .git/modules/path_to_submodule (no trailing slash).
Commit git commit -m "Removed submodule "
Delete the now untracked submodule files rm -rf path_to_submodule

