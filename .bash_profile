if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Paths
export PATH=~/.local/bin:$PATH

# Aliases
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

