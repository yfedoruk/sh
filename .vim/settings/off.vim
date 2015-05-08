" whitespaces
" set encoding=utf-8
" set listchars=tab:>-,trail:·
" set listchars=eol:$,tab:>·,trail:·,extends:>,precedes:<
" set listchars=tab:>·,trail:·,extends:>,precedes:<

" w/s over tabs
" set tabstop=8

" map <C-d> ddkP "dirty hack for move lines
" vmap <C-p> y'>p "duplicate..."


" ------------------ unportable configs ------------------ "
" backup files
" set backupdir=~/tmp/vim
"++++++++++++++++++++++++++++"


"behave mswin

" -------------- colorscheme ---------------- "
"colorscheme askapachecode
"colorscheme default1



" ******************************************* Need to explore **********
" Disable annoying auto line break
" fu! local:disableBr()
"  set wrap
"  set linebreak
"  set nolist  " list disables linebreak
"  set textwidth=0
"  set wrapmargin=0
"  set fo-=t
" endfu

" Disable line breaks for all file types
":au BufNewFile,BufRead *.* call local:disableBr()


" --------------
" for vim-move.git 
" let g:move_key_modifier = 'C'   " for vim-move. Need set also in plugin Up and Down keys by hands :("
" --------------
" execute pathogen#infect()
" Bundle 'mbadran/headlights'
" Bundle 'potion'
" filetype on

" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" Bundle 'file:///home/slava/tmp/taglist'


"Removing plugins
Plugin 'command-t'
Plugin 'matze/vim-move'
Plugin 'tpope/vim-rails.git'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vundle'

" --------------

" set backspace=2
" set backspace=indent,eol,start
" echo $TERM -- term env variable
"set nocursorline
" set synmaxcol=120 
