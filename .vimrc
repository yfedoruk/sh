" *********  First start Vundle: git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"vim -u NONE "load without vimrc"
" source ~/.vim/settings/off.vim
" source ~/.vim/settings/gvim.rc
" source ~/.vim/settings/textmanip.vim
 "source $VIMRUNTIME/vimrc_example.vim
 "source $VIMRUNTIME/mswin.vim        "(windows shortcut keys). /usr/share/vim/vim74/mswin.vim"

set nocompatible
" source ~/.vim/settings/mswin.vim
source ~/.vim/settings/keymap.vim
set runtimepath+=$HOME/.vim/


" -------------- colorscheme ---------------- "
"colorscheme ron
    let g:solarized_termcolors=256
"colorscheme solarized
  if $COLORTERM == 'gnome-terminal'
      set t_Co=256
  endif
" hi Normal guifg=white guibg=black

" ******************************************** "

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

 "Plugin 'leafgarland/typescript-vim'
 "let g:typescript_indent_disable = 1
 Plugin 'Shougo/vimproc.vim', { 'build': {'linux': 'make'} }		"cd ~/.vim/bundle/vimproc.vim && make
 Plugin 'Quramy/tsuquyomi'
 
 Plugin 'mhinz/vim-startify'
 " Plugin 'ervandew/supertab'
 " Plugin 'xolox/vim-misc.git'
 " Plugin 'xolox/vim-session.git'
 " Plugin 'terryma/vim-multiple-cursors'
 " filetype plugin indent on     " required!
 Plugin 'jiangmiao/auto-pairs.git'
 Plugin 't9md/vim-textmanip'
 Plugin 'sheerun/vim-polyglot'
 
 " autoclose html http://stackoverflow.com/a/134990/2310783. sukima/xmledit + othree/xml.vim
	Plugin 'sukima/xmledit'
	Plugin 'othree/xml.vim'
 " php documentor
 Plugin 'tobyS/pdv'
 Plugin 'tobyS/vmustache'
 Plugin 'SirVer/ultisnips'  "sudo pip install neovim or pip3 install neovim

 Plugin 'scrooloose/nerdtree'
 Plugin 'scrooloose/nerdcommenter'
 "Plugin 'scrooloose/syntastic'
 " Plugin 'wincent/command-t'
 "Plugin 'kien/ctrlp.vim'
 Plugin 'Shougo/unite.vim'
   "Plugin 'Shougo/vimproc.vim', { 'build': {'linux': 'make'} }		"cd ~/.vim/bundle/vimproc.vim && make
 Plugin 'bling/vim-airline'

 Plugin 'vim-scripts/Tagbar'
 "need compilation
 "Plugin 'Valloric/YouCompleteMe'
 Plugin 'kshenoy/vim-signature'
 Plugin 'altercation/vim-colors-solarized'
    syntax enable
    set background=dark

 " PHP documenter script bound to Control-P
 "autocmd FileType php inoremap <C-p> <ESC>:call PhpDocSingle()<CR>i
 "autocmd FileType php nnoremap <C-p> :call PhpDocSingle()<CR>
 "autocmd FileType php vnoremap <C-p> :call PhpDocRange()<CR> 
 let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
 nnoremap <buffer> <C-l> :call pdv#DocumentWithSnip()<CR>

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
    "let g:tagbar_sort = 1

    " Single click"
    let g:tagbar_singleclick = 1

    " autoload
    autocmd VimEnter * nested :TagbarOpen

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

" vim-session
let g:session_autoload = 'no'   "for vim-session.git 
let g:session_autosave = 'no'  "for vim-session.git 

set ssop-=options    " do not store global and local values in a session"
set ssop-=folds      " do not store folds"

" ---- Speed up vim (http://superuser.com/questions/302186/vim-scrolls-very-slow-when-a-line-is-to-long)  ---  :help slow-terminal ----
syntax sync minlines=256

set ttyfast           " u got a fast terminal
"set ttyscroll=3
set lazyredraw        " to avoid scrolling problems
set nocursorcolumn
set nocp
set nobackup
set noswapfile
set nowrap
set scrolljump=5
set nu                "set nonu
set shiftwidth=4      "folding indent options
set cursorline                                                          "select current line
set noundofile        "not create backup (untouched) files
hi cursorline term=bold cterm=bold guibg=#E5E5E5                        "cur. line color

set tabstop=4              "set expandtab on 4 spaces
set expandtab         "Use spaces, not tabs. `set noexpandtab` -- contra.  :#retab! -- Retabulate the whole file


" automatically use the '+' buffer (the system clipboard) by default.
set clipboard=unnamedplus

" whitespaces
set list listchars=tab:→\ ,trail:·,extends:>,precedes:<
set list
cmap w!! w !sudo tee > /dev/null %

highlight LineNr guifg=#050505 ctermfg=grey     " line number color

:au SessionLoadPost * :source ~/.vimrc


let g:multi_cursor_next_key='<C-l>'
" let mapleader = ","     "map leader key \ to ,
