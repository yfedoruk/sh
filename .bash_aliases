#fix terminal bug. new tab in cwd
. /etc/profile.d/vte.sh

alias diff='colordiff'
alias ge='geany'
alias em='emacs'
alias gvi='gvim'
alias vi='vim'
alias vie='vim ~/.vimrc'
alias vis='vim ~/.vim/settings/'
alias ..='cd ../'
alias md='mkdir -p'
alias moc='mocp'
alias ll='ls -alFh'

alias ffind='find . -name'
alias src='source ~/.bashrc'
alias srce='vim ~/.bash_aliases'
alias psr1='phpcs --colors --standard=PSR1'
alias psr2='phpcs --colors --standard=PSR2'
alias zend='phpcs --colors --standard=Zend'
alias squiz='phpcs --colors --standard=Squiz'
alias mys='phpcs --colors --standard=MySource'
alias fpsr1='phpcbf --standard=PSR1'
alias fpsr2='phpcbf --standard=PSR2'
alias fzend='phpcbf --standard=Zend'
alias fsquiz='phpcbf --standard=Squiz'
alias fmys='phpcbf --standard=MySource'

alias awkf="awk -F: '{print $1\" +\"$2}'"
alias grepf="grep -rn --color=always  $@[1] $@[2] | awk -F: '{print $1\" +\"$2}'"

alias jc='javac'
alias j='java -Dprism.order=sw'

alias ppa-list='grep -RoPish "ppa.launchpad.net/[^/]+/[^/ ]+" /etc/apt | sort -u | sed -r "s/\.[^/]+\//:/"'
#scripts
alias suspend="sh ~/.sh/suspend.sh"

#Git aliases
alias gittree='git diff-tree --no-commit-id --name-only -r'
alias gs='git status'
alias gst='git stash'
alias gstp='git stash pop'
alias gb='git branch'
alias gm='git merge'
alias gc='git commit -m'
alias gd='git diff -w'
alias gdn='git diff -w --name-only'
alias ga='git add'
alias grH='git reset HEAD'
alias grhrd='git reset --hard'
alias grhH='git reset --hard HEAD'
alias grsH='git reset --soft HEAD^'
alias grm='git rm'
alias gl='git log'
alias gk='git checkout'
alias gA='git add --all :/'
alias gchh='git checkout HEAD'
alias gui='git update-index --assume-unchanged'
alias guin='git update-index --no-assume-unchanged'
alias gll='git pull origin yfedoruck'
alias gsh='git push origin yfedoruck'
alias gls='git pull origin yfedoruck && git push origin yfedoruck'
alias gauto='git add --all && git commit -m"--" && git pull origin yfedoruck && git push origin yfedoruck'


alias gf='git flow'
alias ghs='git flow hotfix start'
alias gfs='git flow feature start'
alias ghf='git flow hotfix finish'
alias gff='git flow feature finish'
# x=$(git symbolic-ref --short -q HEAD) && echo ${x/feature\//}
alias g3ll='git checkout master && git pull origin master && \
	git checkout release && git pull origin release && \
	git checkout develop && git pull origin develop'
alias g3sh='git checkout master && git pull origin master && git push origin master && \
	git checkout release && git pull origin release && git merge master && git push origin release && \
	git checkout develop && git pull origin develop && git push origin develop'

# PS1='\[\e[1;31m\][\A]\[\e[1;33m\]\u\[\e[1;35m\]:\[\e[1;34m\]\w\$\[\e[0m\] '
export PS1='\[\e[1;31m\][\A]\[\e[1;33m\]\u\[\e[1;35m\]:\[\e[1;34m\]\w\[\033[01;32m\]$(__git_ps1)\[\033[01;34m\]\$\[\033[00m\] '
PATH=$PATH:/home/slava/bin
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/node_modules/.bin
#echo "keycode 14 = BackSpace" | loadkeys
#gvim () { command gvim --remote-silent "$@" || command gvim "$@"; 
NODE_PATH=/usr/lib/node_modules
#export JAVA_HOME=/usr/lib/jvm/java-7-oracle/jre/bin/java
export JAVA_HOME=/usr

#set vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

#jetty web-server
JETTY_HOME=/home/slava/www/jetty

# set language toggle on WinKey
setxkbmap -option grp:lwin_toggle us,ru

#devilspie
devilspie &

#tmux
[ -z "$TMUX" ] && export TERM=xterm-256color
