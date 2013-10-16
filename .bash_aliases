alias diff='colordiff'
alias ge='geany'
alias em='emacs'
alias gvi='gvim'
alias ..='cd ../'
#Git aliases
alias gittree='git diff-tree --no-commit-id --name-only -r'
alias gs='git status'
alias gc='git commit -m'
alias gd='git diff -w'
alias ga='git add'
alias gA='git add --all'
alias gchH='git checkout HEAD'
alias gui='git update-index --assume-unchanged'
alias guin='git update-index --no-assume-unchanged'
alias gll='git pull origin'
alias gsh='git push origin'
alias gauto='git add --all && git commit -m"Ok" && git push origin master'

PS1='\[\e[1;31m\][\A]\[\e[1;33m\]\u\[\e[1;35m\]:\[\e[1;34m\]\w\$\[\e[0m\] '
PATH=$PATH:/home/slava/bin
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#echo "keycode 14 = BackSpace" | loadkeys
#gvim () { command gvim --remote-silent "$@" || command gvim "$@"; 
