#!/bin/bash

echo "Linking files from dotfiles repository to $HOME/.config"

ln -s $HOME/dotfiles/nvim $HOME/.config/nvim
ln -s $HOME/dotfiles/tmux $HOME/.config/tmux
ln -s $HOME/dotfiles/fish/config.fish $HOME/.config/fish/config.fish

