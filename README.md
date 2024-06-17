# .dotfiles

## GNU Stow
```
sudo apt install stow
```
## Steps
GNU Stow itself cannot overwrite existing non symlinked files. This work around will overwrite and symlink the existing files with the ones in the repo.
```
git clone git@github.com:CodeBravish/.dotfiles.git ~/.dotfiles
cd  ~/.dotfiles
stow --adopt .
git restore .
```
### Bootstrap
Run the `bootstrap.sh` script to install the dotfile's packages.
