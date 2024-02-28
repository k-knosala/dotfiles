if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting

set -gx EDITOR nvim
set -gx VISUAL nvim

~/.local/bin/mise activate fish | source

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

fzf_configure_bindings --directory=\ct 

fish_add_path $HOME/.cargo/bin

