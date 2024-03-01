if status is-interactive
    # Commands to run in interactive sessions can go here
end

#
# ENVIRONMENT
#

# Add to PATH
fish_add_path ~/.local/bin/

# Activate pyenv
pyenv init - | source

#
# SHELL
#

# Remove greeting message
set -g fish_greeting 

# Open nvim for editing files
set -gx EDITOR nvim
set -gx VISUAL nvim

# Abbreviations
abbr -a lg lazygit 
abbr -a gs git status
abbr -a c clear
abbr -a mm micromamba

# Navigate multiple levels up with multiple dots
function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
end
abbr --add dotdot --regex '^\.\.+$' --function multicd

#
# LANGUAGE SPECIFIC
#

# PYTHON
# Do not pip install when not in virtual environment
set -gx PIP_REQUIRE_VIRTUALENV false

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
set -gx MAMBA_EXE "$HOME/bin/micromamba"
set -gx MAMBA_ROOT_PREFIX "$HOME/micromamba"
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<

# RUST
# Cargo path
fish_add_path $HOME/.cargo/bin


# Install plugins
# 1. https://github.com/jorgebucaran/fisher 
# 2. https://github.com/PatrickF1/fzf.fish
