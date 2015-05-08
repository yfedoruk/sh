" *********  First start Vundle: git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim        "(windows shortcut keys)"
source ~/.vim/settings/keymap.vim
source ~/.vim/settings/off.vim
source ~/.vim/settings/textmanip.vim
source ~/.vim/settings/gvim.rc
set runtimepath+=$HOME/.vim/


" -------------- colorscheme ---------------- "
colorscheme ron
"hi Normal guifg=white guibg=black

" ******************************************** "

" Move tabs with alt + left|right
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>


" autocompleting
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP


" Vundle 
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

 " My Bundles here:
 "
 " vim-scripts repos
 Plugin 'L9'
 Plugin 'FuzzyFinder'
 "
 " original repos on github. git@github.com:
 Plugin 'tpope/vim-fugitive'
 Plugin 'Lokaltog/vim-easymotion'
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 Plugin 'tpope/vim-rails.git'
 Plugin 'vim-scripts/taglist.vim.git'
 Plugin 'vim-scripts/Tagbar.git'
 Plugin 'gerw/vim-HiLinkTrace.git'
 Plugin 'scrooloose/nerdcommenter.git'
 Plugin 'ervandew/supertab.git'
 
 Plugin 'xolox/vim-misc.git'
 Plugin 'xolox/vim-session.git'
 Plugin 'jiangmiao/auto-pairs.git'
 Plugin 't9md/vim-textmanip'
 Plugin 'terryma/vim-multiple-cursors'
 filetype plugin indent on     " required!

call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
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
    " vertical
	let &t_EI = "\<Esc>]12;red\x7"
	autocmd InsertEnter * set cul
	autocmd InsertLeave * set nocul

if has("autocmd")
	au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
	au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
	au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
endif

set nonu

" vim-session
let g:session_autoload = 'no'   "for vim-session.git 
let g:session_autosave = 'no'  "for vim-session.git 

set ssop-=options    " do not store global and local values in a session"
set ssop-=folds      " do not store folds"

" ---- Speed up vim (http://superuser.com/questions/302186/vim-scrolls-very-slow-when-a-line-is-to-long)  ---  :help slow-terminal ----
syntax sync minlines=256

set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems
set nocursorcolumn
set nocp
set nobackup
set noswapfile
set nowrap
set scrolljump=5
set nu
set ts=4              "set expandtab
set shiftwidth=4      "folding indent options
set cursorline                                                          "select current line
hi cursorline term=bold cterm=bold guibg=#E5E5E5                        "cur. line color

" whitespaces
set list listchars=tab:→\ ,trail:·,extends:>,precedes:<
set list


highlight LineNr guifg=#050505 ctermfg=grey     " line number color

:au SessionLoadPost * :source ~/.vimrc


let g:multi_cursor_next_key='<C-l>'
