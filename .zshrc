[ -n "$PS1" ] && source $HOME/.bash_profile;

# load antigen
source $HOME/.antigen/antigen.zsh

#
antigen use oh-my-zsh

# jump to marked directories
antigen bundle jump

# autosuggestions
antigen bundle zsh-users/zsh-autosuggestions

# autocompletion
antigen bundle zsh-users/zsh-completions

# syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# fish shell theme
antigen theme fishy

# tell antigen that you're done
antigen apply
