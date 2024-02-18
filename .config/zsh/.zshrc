stty stop undef
unsetopt BEEP

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=500
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rodia/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias android="aft-mtp-cli"

eval "$(starship init zsh)"

source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

pfetch
