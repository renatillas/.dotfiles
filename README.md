## My Personal Dotfiles Configuration

This repository contains my customized configuration files for various applications and tools. I utilize this setup to maintain consistency across different environments.

To manage my dotfiles, I use [GNU Stow](https://www.gnu.org/software/stow/). To deploy them, execute the following command:

```bash
stow --adopt --target=$HOME .
```

## Favorite Tools

### Alternative to cd: zoxide

```bash
brew install zoxide
z <directory-name>
```

### Alternative to htop: bottom

```bash
brew install bottom
btm
```

### Alternative to cat: bat

```bash
brew install bat
bat <file-path>
```

### Alternative to ls: exa

```bash
brew install exa
exa --git <directory-name>
```
