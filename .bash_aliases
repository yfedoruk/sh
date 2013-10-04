alias diff='colordiff'
alias ge='geany'
alias gvi='gvim'
alias ..='cd ../'
#Git aliases
alias gittree='git diff-tree --no-commit-id --name-only -r'
alias gits='git status'
alias gitc='git commit -m'
alias gitd='git diff -w'
alias gita='git add'
alias gitA='git add --all'
alias gitchH='git checkout HEAD'
alias gitll='git pull origin'
alias gitsh='git push origin'

PS1='\[\e[1;31m\][\A]\[\e[1;33m\]\u\[\e[1;35m\]:\[\e[1;34m\]\w\$\[\e[0m\] '
PATH=$PATH:/home/slava/bin
#echo "keycode 14 = BackSpace" | loadkeys
#gvim () { command gvim --remote-silent "$@" || command gvim "$@"; 
