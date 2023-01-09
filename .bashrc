# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'

alias untar='tar -zxvf'

alias github='cd $HOME/code/GitHub'
alias gitlab='cd $HOME/code/GitLab'
alias gitea='cd $HOME/code/Gitea'

alias migration-date='date +"%Y%m%d%H%M%S"'

PS1='[\u@\h \W]\$ '
