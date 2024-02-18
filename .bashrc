#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias check="sleep 2; hyprctl activewindow"
alias sl="sl -e"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias android="aft-mtp-cli"
alias usb="lf /run/media/rodia"
alias pub-wifi="firefox \"\$(route -n | head -n3 | tail -n1 | awk '{print \$2}')\"; \
  echo \"Otwieranie karty w przeglądarce...\""

alias agh="ssh zawila@bastion.ii.agh.edu.pl"
[ "$TERM" = "xterm-kitty" ] && alias ssh="TERM=xterm ssh"
PS1='[\u@\h \W]\$ '

export PATH=$PATH:/home/rodia/.cargo/bin
export EDITOR="nvim"
export SUDO_EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export GDK_BACKEND=wayland
# export QT_QPA_PLATFORM=wayland
# export QT_QPA_PLATFORMTHEME=qt5ct


eval "$(starship init bash)"

pfetch
