!/usr/bin/env bash

git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export EDITOR=vim;
export VISUAL=vim;

# TERMINAL PROMPT
export PS1="\[\033[38;5;10m\]\u\[$(tput sgr0)\] :: [\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]] \\$ \[$(tput sgr0)\]"
#PS1+="\[\e[0;92m\]\$(git_branch)\[\e[m\]"    # current branch


# ALIASES
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dc="cd ~/Documents"
alias p="cd ~/Documents/projects"
alias sc="cd $HOME/.scripts"
alias home="cd ~"
alias c="clear"
alias v=$EDITOR
alias r="ranger"
alias scr="source venv/bin/activate"
