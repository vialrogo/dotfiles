# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export _USER=$(id -u -n)

# For sudo auto-completation
complete -cf sudo

# Load auto-completation of git
if [ -e  ~/.bash_git ]; then
  source ~/.bash_git
fi
if [ -e  /usr/share/git/completion/git-completion.bash ]; then
  source /usr/share/git/completion/git-completion.bash
fi
if [ -e  /usr/share/bash-completion/completions/git ]; then
  source /usr/share/bash-completion/completions/git 
fi
if [ -e  /usr/share/git/git-prompt.sh ]; then
  source /usr/share/git/git-prompt.sh
fi

# Define default editor
export EDITOR=vim

# For the complete colorschemes in vim
export TERM='xterm-256color'

# Add the user bin folder to the path
export PATH=$PATH:/home/$_USER/bin

# For better colored man pages
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

# Aliases
alias ls='ls --color=auto'
alias ssh_ime='ssh -AXt -L 3128:ime.usp.br:3128 -L 3125:smtp.ime.usp.br:25 ime.usp.br'

# Bash Colors
export console="\[\e[0m\]"
export black="\[\e[0;30m\]"
export red="\[\e[0;31m\]"
export green="\[\e[0;32m\]"
export yellow="\[\e[0;33m\]"
export blue="\[\e[0;34m\]"
export purple="\[\e[0;35m\]"
export cyan="\[\e[0;36m\]"
export gray="\[\e[0;37m\]"
export blackB="\[\e[1;30m\]"
export redB="\[\e[1;31m\]"
export greenB="\[\e[1;32m\]"
export yellowB="\[\e[1;33m\]"
export blueB="\[\e[1;34m\]"
export purpleB="\[\e[1;35m\]"
export cyanB="\[\e[1;36m\]"
export grayB="\[\e[1;37m\]"

# Variables
export gitBash="\$(__git_ps1 \"(%s)\")"
export colorU=${grayB}
export colorH=${cyanB}
export colorG=${grayB}
export colorW=${gray}
export colorT=${blackB}
export colorC=${console}

if [ "root" == $_USER ]; then
  export colorU=${redB}
  export colorW=${purple}
  export colorG=${red}
  export colorH=${grayB}
fi

if [ "Asus" != $HOSTNAME ]; then
  export colorH=${greenB}
  export colorT=${green}
fi

# Prompts
alias prompt_normal="export PS1='${colorU}\u ${colorH}\h ${colorW}\w ${colorG}${gitBash}\n${colorT}\t $ ${colorC}'"
alias prompt_simply="export PS1='${colorH}\h ${colorG}\W ${colorW}${gitBash} $ ${colorC}'"

prompt_normal

