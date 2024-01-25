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
fish_vi_key_bindings
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_visual underscore
set fish_cursor_replace underscore
set fish_cursor_replace_one underscore
set fish_cursor_external underscore

# Aliases and abbreviations
alias cat bat
alias cd z
alias l="exa -la --icons --git"
alias lt="exa -la --tree --level=2 --icons --git"
alias v nvim
alias nu="nu --config ~/.config/nushell/config.nu --env-config ~/.config/nushell/env.nu"
