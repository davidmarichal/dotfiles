#!/usr/bin/env bash

test -z "$PS1" && return;

# Color mode.
export TERM=xterm-256color;

# Make vim the default editor.
export EDITOR=vim;
export VISUAL=vim;

# Set US English and UTF-8 encoding.
export LANG="en_US.UTF-8";
export LC_ALL="en_US.UTF-8";

# Load aliases.
if test -f "$HOME/.bash_aliases"; then
    . $HOME/.bash_aliases
fi

# Load env variables.
if test -f "$HOME/.bash_env"; then
    . $HOME/.bash_env
fi

# Composer
if test -d "$HOME/.config/composer/vendor/bin"; then
    PATH="$HOME/.config/composer/vendor/bin:$PATH";
fi

# JDK
if test -d "/usr/lib/jvm/default-java"; then
    JAVA_HOME="/usr/lib/jvm/default-java";
fi
