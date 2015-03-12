set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim        "(windows shortcut keys)"
source ~/.vim/settings/keymap.vim
source ~/.vim/settings/off.vim
source ~/.vim/settings/textmanip.vim

" -------------- colorscheme ---------------- "
colorscheme ron
"hi Normal guifg=white guibg=black

" ******************************************** "
" tabs
    " Tabbing selected section forward/back (don't write comments on right side of code, so as it thinks whitespace is command!)
vmap <Tab> >gv
vmap <S-Tab> <gv

"duplicate current line
map <C-d> yyp
vmap <C-p> y'}P


" Move tabs with alt + left|right
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>


" autocompliting
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

set runtimepath+=$HOME/.vim/

" whitespaces
set list listchars=tab:→\ ,trail:·,extends:>,precedes:<
set list

"  FOLDING INDENT OPTIONS
    set shiftwidth=4

set cursorline                                                          "select current line "
hi cursorline term=bold cterm=bold guibg=#E5E5E5                        "cur. line color"

    " set expandtab
set ts=4
" execute pathogen#infect()

" Bundle 'mbadran/headlights'
" Bundle 'potion'
" filetype on


set nocompatible               " be iMproved
 filetype off                   " required!

" Vundle 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 " Bundle 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
 " ...
 " Bundle 'file:///home/slava/tmp/taglist'
 Bundle 'git@github.com:vim-scripts/taglist.vim.git'
 Bundle 'git@github.com:vim-scripts/Tagbar.git'
 Bundle 'git@github.com:gerw/vim-HiLinkTrace.git'
 Bundle 'git@github.com:scrooloose/nerdcommenter.git'
 Bundle 'git@github.com:ervandew/supertab.git'
 
 Bundle 'git@github.com:xolox/vim-misc.git'
 Bundle 'git@github.com:xolox/vim-session.git'
 Bundle 'git@github.com:jiangmiao/auto-pairs.git'
 "Bundle 'matze/vim-move'
 Bundle 't9md/vim-textmanip'
 Bundle 'terryma/vim-multiple-cursors'
 filetype plugin indent on     " required!

filetype on

" for taglist!!!!
let g:Tlist_Ctags_Cmd='/usr/bin/ctags'


" ---------- tagbar settings ------------- "
    " window left
    let g:tagbar_left = 1

    " window width
    let g:tagbar_width = 30

    " Show arrow instead of +/-
    let g:tagbar_iconchars = ['▶', '◢']

    " Don't sort
    let g:tagbar_sort = 0

    " Single click"
    let g:tagbar_singleclick = 1

    " autoload
    " autocmd VimEnter * nested :TagbarOpen
    
    "map on F9"
    nnoremap <silent> <F9> :TagbarToggle<CR>

" Cursor
    " vertical "
    set guicursor=n-v-c:ver25-Cursor
    "set guicursor+=i:block-Cursor
    "set guicursor=n-v-c:blinkon0-block-Cursor
	let &t_EI = "\<Esc>]12;red\x7"
	autocmd InsertEnter * set cul
	autocmd InsertLeave * set nocul

if has("autocmd")
	au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
	au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
	au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
endif

" set backspace=2
" set backspace=indent,eol,start
set nonu

" vim-session
let g:session_autoload = 'no'   "for vim-session.git 
let g:session_autosave = 'no'  "for vim-session.git 

set ssop-=options    " do not store global and local values in a session"
set ssop-=folds      " do not store folds"

                        " for vim-move.git 
                        " let g:move_key_modifier = 'C'   " for vim-move. Need set also in plugin Up and Down keys by hands :("

" Maximize GVim on start

if has("gui_running")
  set lines=200 columns=999
endif

" ---- Speed up vim (http://superuser.com/questions/302186/vim-scrolls-very-slow-when-a-line-is-to-long)  ---  :help slow-terminal ----
" set synmaxcol=120 
set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems
syntax sync minlines=256
set nocursorcolumn
"set nocursorline
set nocp

set nobackup
set noswapfile
set nowrap
set scrolljump=5

" echo $TERM -- term env variable
set nu
highlight LineNr guifg=#050505 ctermfg=grey     " line number color

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

:au SessionLoadPost * :source ~/.vimrc


let g:multi_cursor_next_key='<C-l>'
