if status is-interactive
    # Commands to run in interactive sessions can go here
end
# Setting path variables
## To add homebrew to path
fish_add_path /opt/homebrew/bin

## Add cargo's bin directory to path
fish_add_path $HOME/.cargo/bin

# Init programs within fish
## To init zoxide 
zoxide init fish | source

## To init starship 
starship init fish | source

# vim keybindings
function fish_user_key_bindings
    fish_vi_key_bindings insert
    set fish_cursor_default block
    set fish_cursor_insert line
    set fish_cursor_visual underscore
    set fish_cursor_replace underscore
    set fish_cursor_replace_one underscore
    set fish_cursor_external underscore
end

# Aliases and abbreviations
alias cat bat
alias cd z
alias l="eza -la --icons --git"
alias lt="eza -la --tree --level=2 --icons --git"
alias v nvim
alias nu="nu --config ~/.config/nushell/config.nu --env-config ~/.config/nushell/env.nu"

# opam configuration
source /Users/renata-amutio/.opam/opam-init/init.fish >/dev/null 2>/dev/null; or true

~/.cargo/bin/mise activate fish | source

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin /Users/renata-amutio/.ghcup/bin $PATH # ghcup-env


# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.fish 2>/dev/null || :

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Created by `pipx` on 2025-08-18 20:01:25
set PATH $PATH /Users/renata-amutio/.local/bin
