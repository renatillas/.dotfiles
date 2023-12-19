# My .dotfiles folder

This is my personal .dotfiles folder. I use it to keep track of my configuration
files.
I use [GNU Stow](https://www.gnu.org/software/stow/) to manage my dotfiles:

```bash
stow --adopt . --target=$HOME
```
