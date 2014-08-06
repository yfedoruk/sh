alias diff='colordiff'
alias ge='geany'
alias em='emacs'
alias gvi='gvim'
alias ..='cd ../'
alias ll='ls -alFh'


#scripts
alias suspend="sh ~/.sh/suspend.sh"

#Git aliases
alias gittree='git diff-tree --no-commit-id --name-only -r'
alias gs='git status'
alias gc='git commit -m'
alias gd='git diff -w'
alias ga='git add'
alias grh='git reset HEAD'
alias gA='git add --all'
alias gchh='git checkout HEAD'
alias grh='git reset HEAD'
alias gui='git update-index --assume-unchanged'
alias guin='git update-index --no-assume-unchanged'
alias gll='git pull origin develop'
alias gsh='git push origin develop'
alias gls='git pull origin develop && git push origin develop'
alias gauto='git add --all && git commit -m"--" && git push origin develop'

PS1='\[\e[1;31m\][\A]\[\e[1;33m\]\u\[\e[1;35m\]:\[\e[1;34m\]\w\$\[\e[0m\] '
PATH=$PATH:/home/slava/bin
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#echo "keycode 14 = BackSpace" | loadkeys
#gvim () { command gvim --remote-silent "$@" || command gvim "$@"; 
NODE_PATH=/usr/lib/node_modules
