alias diff='colordiff'
alias ge='geany'
alias em='emacs'
alias gvi='gvim'
alias vi='vim'
alias ..='cd ../'
alias ll='ls -alFh'

alias ffind='find . -name'
#scripts
alias suspend="sh ~/.sh/suspend.sh"

#Git aliases
alias gittree='git diff-tree --no-commit-id --name-only -r'
alias gs='git status'
alias gb='git branch'
alias gc='git commit -m'
alias gd='git diff -w'
alias ga='git add'
alias grh='git reset HEAD'
alias grhd='git reset --hard'
alias grm='git rm'
alias gl='git log'
alias gco='git checkout'
alias gA='git add --all'
alias gchh='git checkout HEAD'
alias gui='git update-index --assume-unchanged'
alias guin='git update-index --no-assume-unchanged'
alias gll='git pull origin yfedoruck'
alias gsh='git push origin yfedoruck'
alias gls='git pull origin yfedoruck && git push origin yfedoruck'
alias gauto='git add --all && git commit -m"--" && git push origin yfedoruck'

PS1='\[\e[1;31m\][\A]\[\e[1;33m\]\u\[\e[1;35m\]:\[\e[1;34m\]\w\$\[\e[0m\] '
PATH=$PATH:/home/slava/bin
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/node_modules/.bin
#echo "keycode 14 = BackSpace" | loadkeys
#gvim () { command gvim --remote-silent "$@" || command gvim "$@"; 
NODE_PATH=/usr/lib/node_modules
