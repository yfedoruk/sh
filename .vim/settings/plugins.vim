" ***************  plugins *************** "

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


 " ******** fzf **********
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

