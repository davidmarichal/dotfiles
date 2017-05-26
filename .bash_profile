#!/usr/bin/env bash

# Load the shell dotfiles
for DOTFILE in $HOME/.{env,aliases}; do
  [ -r "$DOTFILE" ] && [ -f "$DOTFILE" ] && source "$DOTFILE";
done;
