#fix terminal bug. new tab in cwd
#. /etc/profile.d/vte.sh


if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

if [ -f ~/Dropbox/.aliases ]; then
    . ~/Dropbox/.aliases
fi

if [ -f ~/.env ]; then
    . ~/.env
fi

if [ -f ~/.git-completion.bash  ]; then
      . ~/.git-completion.bash



#devilspiedd git completion to aliases
  __git_complete g __git_main
  __git_complete gk _git_checkout
  __git_complete gm __git_merge
  __git_complete gll _git_pull
fi

devilspie &

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
}

#FZF_DEFAULT_COMMAND="eval $(history | fzf +s | sed 's/ *[0-9]* *//')"
PGPASSWORD=gthcgtrnbdf
alias lock='i3lock -c000000'


if [ `pidof rofi`  ]; then
    rofi -key-run F3 -key-window F2 &
fi

