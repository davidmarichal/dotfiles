#!/usr/bin/env bash

# Load the shell dotfiles
for DOTFILE in $HOME/.{aliases,env}; do
  [ -r "$DOTFILE" ] && [ -f "$DOTFILE" ] && source "$DOTFILE";
done;
