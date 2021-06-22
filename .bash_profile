export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export EDITOR=vim;
export VISUAL=vim;
export PATH=$PATH:/usr/local/Cellar/openvpn/2.5.2/sbin

# TERMINAL PROMPT
export PS1="\[\033[38;5;9m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\] \[$(tput bold)\]>>\[$(tput sgr0)\] \[$(tput sgr0)\]"

# ALIASES
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dc="cd ~/Documents"
alias sc="cd $HOME/.scripts"
alias home="cd ~"
alias c="clear"
alias v=$EDITOR
alias scr="source venv/bin/activate"
alias ls="ls -lah"
