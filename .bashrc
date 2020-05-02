#!/usr/bin/env bash

test -z "$PS1" && return;

# Make vim the default editor.
export EDITOR=vim;
export VISUAL=vim;

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    color_prompt=yes
else
    color_prompt=
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

unset color_prompt

# Load bash completion
if test -f "/etc/bash_completion"; then
  . "/etc/bash_completion";
fi

# Load aliases.
if test -f "$HOME/.bash_aliases"; then
  . "$HOME/.bash_aliases";
fi

# Load env variables.
if test -f "$HOME/.bash_env"; then
  . "$HOME/.bash_env";
fi

# Composer
if test -d "$HOME/.config/composer/vendor/bin"; then
  PATH="$HOME/.config/composer/vendor/bin:$PATH";
fi

# Go
if test -d "$HOME/go/bin"; then
  PATH="$HOME/go/bin:$PATH";
fi

# JDK
if test -z "$JAVA_HOME"; then
  # Ubuntu
  if test -d "/usr/lib/jvm/default-java"; then
    JAVA_HOME="/usr/lib/jvm/default-java";
  fi
fi
