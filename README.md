## Dotfiles

Notes:

* Terminal colors: [linux](https://github.com/aruhier/gnome-terminal-colors-solarized).
* Update email address in `.gitconfig`.

Basic vim setup:

* First, install vim.
* Clone the repositories & set up links.

```
git clone https://github.com/awylie/dotfiles.git ~/dotfiles
<create symlinks to individual dotfiles>
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
``````

* Install the vim bundles.
```
vim +PluginInstall +qall
```
