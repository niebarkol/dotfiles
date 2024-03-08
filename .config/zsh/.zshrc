stty stop undef
unsetopt BEEP
unsetopt NOMATCH

eval "$(starship init zsh)"
pfetch

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rodia/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias pacmans="sudo pacman"
alias locate="find 2>/dev/null / -iname"
alias check="sleep 2; hyprctl activewindow"
alias sl="sl -e"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias android="aft-mtp-cli"
alias usb="lf /run/media/rodia"
alias agh="ssh zawila@bastion.ii.agh.edu.pl"
[ "$TERM" = "xterm-kitty" ] && alias ssh="TERM=xterm ssh"


bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char


source $HOME/.local/share/zsh/plugins/zsh-shift-select/zsh-shift-select.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.local/share/zsh/plugins/catppuccin_mocha-zsh-syntax-highlighting.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
