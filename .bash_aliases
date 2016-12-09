#fix terminal bug. new tab in cwd
#. /etc/profile.d/vte.sh

alias diff='colordiff'
alias ge='geany'
alias em='emacs'
alias gvi='gvim'
alias vi='vim'
alias vie='vim ~/.vimrc'
alias vis='vim ~/.vim/settings/'
alias ..='cd ../'
alias ...='cd ../../'
alias md='mkdir -pv'
alias moc='mocp'
alias ll='ls -alFh'
alias l.='ls -d .* --color=auto'
alias wget='wget -c'
alias df='df -h'
alias storm="/usr/local/src/PhpStorm-139.1348/bin/phpstorm.sh"

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
alias ap2log='tail -f /var/log/apache2/error.log'

alias awkf="awk -F: '{print $1\" +\"$2}'"
alias grepf="grep -rn --color=always  $@[1] $@[2] | awk -F: '{print $1\" +\"$2}'"
alias update="sudo apt update && sudo apt -y  upgrade && sudo apt -y dist-upgrade && sudo apt -y autoremove"
alias mp3="find -iname '*.mp3' -print0 | xargs -0 mid3iconv -eCP1251 --remove-v1"
alias killp="sudo kill -9 $(ps aux | pidof $1)"
alias xdebugon='sudo phpenmod xdebug && sudo service apache2 reload'
alias xdebugoff='sudo phpdismod xdebug && sudo service apache2 reload'
alias tf='tail -f'
alias install='sudo apt install'
alias phpunit='phpunit --debug'
alias sound='pulseaudio -k && sudo alsa force-reload'
alias swap='sudo swapoff -a && sudo swapon -a'

alias jc='javac'
alias j='java -Dprism.order=sw'

# --- work --
alias 1ihub='/media/veracrypt1/www/docker/run/phpfpm/ssh.sh'
alias ihub='/home/slava/www/docker/run/phpfpm/ssh.sh'

alias ppa-list='grep -RoPish "ppa.launchpad.net/[^/]+/[^/ ]+" /etc/apt | sort -u | sed -r "s/\.[^/]+\//:/"'
#scripts
alias suspend="sh ~/.sh/suspend.sh"
alias shutdown="sudo shutdown -h now"
ytb() {
  curl --ciphers RC4-SHA "$(youtube-dl -g https://www.youtube.com/watch?v=$1)" | mplayer -
}

# grep aliases
alias grepk="grep -rn --exclude-dir=runtime"

#Git aliases
alias gittree='git diff-tree --no-commit-id --name-only -r'
alias gs='git status'
alias gst='git stash'
alias gstp='git stash pop'
alias gstl='git stash list'
alias gsw='git show'
alias gb='git branch'
alias gt='git tag'
alias gm='git merge'
alias gc='git commit -m'
alias gmsgedit='git reset --soft HEAD^ && git commit -c ORIG_HEAD'
alias gd='git diff -w'
alias gdn='git diff -w --name-only'
alias gfd='git status --porcelain | grep -E "^(A|\s)M\s" | sed "s/\sM\s//g" |  head -1 | xargs git diff'
alias gfa='git status --porcelain | grep -E "^(A|\s)M\s" | sed "s/\sM\s//g" |  head -1 | xargs git add'
alias ga='git add'
alias grh='git reset HEAD'
alias grhrd='git reset --hard'
alias grsft='git reset --soft'
alias grhH='git reset --hard HEAD'
alias grsH='git reset --soft HEAD^'
alias grm='git rm'
alias gl='git log'
alias gk='git checkout'
alias gkm='git checkout master'
alias gkd='git checkout develop'
alias gA='git add --all :/'
alias gchh='git checkout HEAD'
alias gun='git update-index --assume-unchanged'
alias gunn='git update-index --no-assume-unchanged'
alias gll='git pull'
alias gsh='git push'
alias gls='git pull origin yfedoruck && git push origin yfedoruck'
alias gauto='git add --all && git commit -m"--" && git pull origin yfedoruck && git push origin yfedoruck'


alias gf='git flow'
alias ghs='git flow hotfix start'
alias gfs='git flow feature start'
alias ghf='git flow hotfix finish'
alias gff='git flow feature finish'
hotfix() {
    git stash
    git checkout master
    git pull origin master
    git checkout develop
    git pull origin develop
    git flow hotfix start $1
    git stash pop
    git add --all :/
    git commit -m "$1"
    #git flow hotfix finish $1
}
alias ghauto=hotfix
# x=$(git symbolic-ref --short -q HEAD) && echo ${x/feature\//}
alias g1sh='git checkout develop && git pull origin develop && git push origin develop'
alias g0sh='git checkout master && git pull origin master && git push origin master'
alias g2ll='git checkout master && git pull origin master && \
	git checkout develop && git pull origin develop'
alias g2sh='git checkout master && git pull origin master && git push origin master && \
	git checkout develop && git pull origin develop && git push origin develop'

# PS1='\[\e[1;31m\][\A]\[\e[1;33m\]\u\[\e[1;35m\]:\[\e[1;34m\]\w\$\[\e[0m\] '
export PS1='\[\e[1;31m\][\A]\[\e[1;33m\]\u\[\e[1;35m\]:\[\e[1;34m\]\w\[\033[01;32m\]$(__git_ps1)\[\033[01;34m\]\$\[\033[00m\] '
PATH=$PATH:/home/slava/bin
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/node_modules/.bin
PATH=$PATH:$HOME/.rvm/bin/rvm
PATH=$PATH:$HOME/.composer/vendor/bin
#echo "keycode 14 = BackSpace" | loadkeys
#gvim () { command gvim --remote-silent "$@" || command gvim "$@"; 
NODE_PATH=/usr/lib/node_modules
#export JAVA_HOME=/usr
JAVA_HOME=/usr/lib/jvm/java-8-oracle
OWTEST_READ_TIMEOUT=20000000000

#set vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

#jetty web-server
JETTY_HOME=/home/slava/www/jetty

# set language toggle on WinKey
setxkbmap -option grp:alt_shift_toggle us,ua
setxkbmap -option grp:rwin_toggle us,ru

#devilspie
devilspie &

#tmux
[ -z "$TMUX" ] && export TERM=xterm-256color


fh() {
  eval $(history | fzf +s | sed 's/ *[0-9]* *//')

}

export FZF_DEFAULT_OPTS='
  --extended-exact
  --bind ctrl-f:page-down,ctrl-b:page-up
  --no-sort
'

alias fzf='fzf --bind "enter:execute(less {})"'
fd() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"

alias ..='cd ../'
}

#FZF_DEFAULT_COMMAND="eval $(history | fzf +s | sed 's/ *[0-9]* *//')"
PGPASSWORD=gthcgtrnbdf
alias lock='i3lock -c000000'
