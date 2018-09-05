" vim -u NONE "load without vimrc"
" source ~/.vim/settings/off.vim
" source ~/.vim/settings/gvim.rc
" source ~/.vim/settings/textmanip.vim
" source ~/.vim/settings/mswin.vim
" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim        "(windows shortcut keys). /usr/share/vim/vim74/mswin.vim"

set nocompatible
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


 autocmd filetype c nnoremap <F9> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
 autocmd filetype cpp nnoremap <F9> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR><Paste>
 

" for taglist!!!!
let g:Tlist_Ctags_Cmd='/usr/bin/ctags'

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
