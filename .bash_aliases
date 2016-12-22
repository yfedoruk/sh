#fix terminal bug. new tab in cwd
#. /etc/profile.d/vte.sh


if [ -f ~/.aliases ]; then
    . ~/.aliases
fi


if [ -f ~/.env ]; then
    . ~/.env
fi


#devilspie
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

#rofi -key-run F3 -key-window F2 &
