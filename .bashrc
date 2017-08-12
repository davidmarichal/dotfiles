test -z "$PS1" && return;

# Make vim the default editor.
export EDITOR=vim;
export VISUAL=vim;

# Set US English and UTF-8 encoding.
export LANG="en_US.UTF-8";
export LC_ALL="en_US.UTF-8";

# Aliases
alias c="clear";
alias header="curl -I";
alias la="ls -alh --group-directories-first --color=always";
alias suspend="systemctl suspend";

# JDK
if test -d "/usr/lib/jvm/default"
then
    JAVA_HOME="/usr/lib/jvm/default";
fi

# Android SDK
if test -d "$HOME/Android"
then
    ANDROID_HOME="$HOME/Android";
    PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/26.0.0:$PATH";
fi

# Android NDK
if test -d "$ANDROID_HOME/ndk"
then
    ANDROID_NDK_ROOT="$ANDROID_HOME/ndk";
    PATH="$ANDROID_NDK_ROOT/build:$PATH";
fi

# Bin
if test -d "$HOME/bin"
then
    PATH="$HOME/bin:$PATH";
fi

# Composer
if test -d "$HOME/.config/composer/vendor/bin"
then
    PATH="$HOME/.config/composer/vendor/bin:$PATH";
fi

# Ruby
if test -d "$HOME/.gem/ruby/2.4.0/bin"
then
    PATH="$HOME/.gem/ruby/2.4.0/bin:$PATH";
fi
