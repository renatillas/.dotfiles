# My .dotfiles folder

<!--toc:start-->
- [My .dotfiles folder](#my-dotfiles-folder)
- [Programs that I like](#programs-that-i-like)
  - [Replacement for cd: zoxide](#replacement-for-cd-zoxide)
  - [Replacement for htop: bottom](#replacement-for-htop-bottom)
  - [Replacement for cat: bat](#replacement-for-cat-bat)
  - [Replacement for ls: exa](#replacement-for-ls-exa)
<!--toc:end-->

This is my personal .dotfiles folder. I use it to keep track of my configuration
files.
I use [GNU Stow](https://www.gnu.org/software/stow/) to manage my dotfiles:

```bash
stow --adopt . --target=$HOME
```

## Programs that I like

### Replacement for cd: zoxide

```bash
brew install zoxide
z
```

### Replacement for htop: bottom

```bash
brew install bottom
btm
```

### Replacement for cat: bat

```bash
brew install bat
bat
```

### Replacement for ls: exa

```bash
brew install exa
exa
```
