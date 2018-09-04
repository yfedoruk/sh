" vim -u NONE "load without vimrc"
" source ~/.vim/settings/off.vim
" source ~/.vim/settings/gvim.rc
" source ~/.vim/settings/textmanip.vim
" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim        "(windows shortcut keys). /usr/share/vim/vim74/mswin.vim"

set nocompatible
" source ~/.vim/settings/mswin.vim
source ~/.vim/settings/keymap.vim
source ~/.vim/settings/plugins.vim
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


call plug#begin('~/.vim/plugged')

 Plug 'Shougo/vimproc.vim', { 'build': {'linux': 'make'} }		"cd ~/.vim/bundle/vimproc.vim && make
 Plug 'Quramy/tsuquyomi'
 
 Plug 'mhinz/vim-startify'
 " Plug 'ervandew/supertab'
 " Plug 'xolox/vim-misc.git'
 " Plug 'xolox/vim-session.git'
 " Plug 'terryma/vim-multiple-cursors'
 " filetype plugin indent on     " required!
 Plug 'jiangmiao/auto-pairs'
 Plug 't9md/vim-textmanip'
 Plug 'sheerun/vim-polyglot'
 "Plug 'skywind3000/asyncrun.vim'

 autocmd filetype c nnoremap <F9> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
 autocmd filetype cpp nnoremap <F9> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR><Paste>
 
 " autoclose html http://stackoverflow.com/a/134990/2310783. sukima/xmledit + othree/xml.vim
	Plug 'sukima/xmledit'
	Plug 'othree/xml.vim'
 " php documentor
 Plug 'tobyS/pdv'
 Plug 'tobyS/vmustache'
 " Plug 'SirVer/ultisnips'  "sudo pip install neovim or pip3 install neovim

 Plug 'scrooloose/nerdtree'
 Plug 'scrooloose/nerdcommenter'
 "Plug 'scrooloose/syntastic'
 " Plug 'wincent/command-t'
 "Plug 'ctrlpvim/ctrlp.vim'
 "Plug 'Shougo/unite.vim'
 Plug 'yegappan/mru'

 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'junegunn/fzf.vim'
 "nnoremap <space>s :Unite -quick-match buffer<cr><Paste>
 "Plug 'Shougo/denite.nvim'
   "Plug 'Shougo/vimproc.vim', { 'build': {'linux': 'make'} }		"cd ~/.vim/bundle/vimproc.vim && make
 Plug 'bling/vim-airline'

 Plug 'vim-scripts/Tagbar'
 "need compilation
 Plug 'Valloric/YouCompleteMe'
 Plug 'kshenoy/vim-signature'
 Plug 'fatih/vim-go'
    set autowrite
    autocmd FileType go nmap <leader>b  <Plug>(go-build)
    autocmd FileType go nmap <leader>r  <Plug>(go-run)
 Plug 'altercation/vim-colors-solarized'
    syntax enable
    set background=dark

 " PHP documenter script bound to Control-P
 "autocmd FileType php inoremap <C-p> <ESC>:call PhpDocSingle()<CR>i
 "autocmd FileType php nnoremap <C-p> :call PhpDocSingle()<CR>
 "autocmd FileType php vnoremap <C-p> :call PhpDocRange()<CR> 
 let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
 nnoremap <buffer> <C-l> :call pdv#DocumentWithSnip()<CR>

call plug#end()
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

" this save file on press ESC in insert mode.
if has("autocmd")
	"au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
	"au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
	"au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
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
