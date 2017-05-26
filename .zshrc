[ -n "$PS1" ] && source $HOME/.bash_profile;

source $HOME/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Plugins
antigen bundle jump
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

# Theme
antigen theme fishy

# Tell Antigen that you're done.
antigen apply
