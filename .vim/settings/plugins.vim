" ***************  plugins *************** "

call plug#begin('~/.vim/plugged')

 Plug 'Shougo/vimproc.vim', { 'build': {'linux': 'make'} }		"cd ~/.vim/bundle/vimproc.vim && make

 Plug 'mhinz/vim-startify'
 " Plug 'ervandew/supertab'
 " Plug 'xolox/vim-misc.git'
 " Plug 'xolox/vim-session.git'
 " Plug 'terryma/vim-multiple-cursors'
 " filetype plugin indent on     " required!
 Plug 'jiangmiao/auto-pairs'


" **************** vim-textmanip ********************
 Plug 't9md/vim-textmanip'
    xmap <M-d> <Plug>(textmanip-duplicate-down)
    nmap <M-d> <Plug>(textmanip-duplicate-down)
    xmap <M-D> <Plug>(textmanip-duplicate-up)
    nmap <M-D> <Plug>(textmanip-duplicate-up)

    map <M-Down> <Plug>(textmanip-move-down)
    map <M-Up> <Plug>(textmanip-move-up)
    map <M-j> <Plug>(textmanip-move-down)
    map <M-k> <Plug>(textmanip-move-up)
    map <M-h> <Plug>(textmanip-move-left)
    map <M-l> <Plug>(textmanip-move-right)

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

 " == Unite ==
 " Plug 'Shougo/unite.vim'
      " auto insert mode"
      "let g:unite_enable_start_insert = 1

      "place right and bottom
      "let g:unite_split_rule = "botright"

      "disable overwriting  statusline
      "let g:unite_force_overwrite_statusline = 0

      "size unite window
      "let g:unite_winheight = 10

      "pretty icons
      "let g:unite_candidate_icon="▷"

      "general find mapping
      "nnoremap <leader>f :<C-u>Unite -buffer-name=files -start-insert buffer file_rec/async:!<cr>

      "buffers
      "nnoremap <leader>b :<C-u>Unite -start-insert -auto-resize buffer<CR>

 Plug 'yegappan/mru'
    nmap <leader>h :MRU<CR>


 " ******** fzf **********
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'junegunn/fzf.vim'
    nmap <leader>b :Buffers<CR>

 "nnoremap <space>s :Unite -quick-match buffer<cr><Paste>
 "Plug 'Shougo/denite.nvim'
   "Plug 'Shougo/vimproc.vim', { 'build': {'linux': 'make'} }		"cd ~/.vim/bundle/vimproc.vim && make

 " == AIRLINES == "
       Plug 'bling/vim-airline'
     "Note: Mappings will be ignored within a NERDTree buffer
      set encoding=utf-8
      "set laststatus=2
      let g:airline#extensions#tabline#enabled = 1
      let g:airline#extensions#tabline#show_buffers = 1
      let g:airline#extensions#tabline#buffer_idx_mode = 1
      "let g:airline_powerline_fonts=0

      "extensions
        let g:airline#extensions#disable_rtp_load = 1
      " an empty list disables all extensions
        let g:airline_extensions = ['tabline']

      nmap <leader>1 <Plug>AirlineSelectTab1
      nmap <leader>2 <Plug>AirlineSelectTab2
      nmap <leader>3 <Plug>AirlineSelectTab3
      nmap <leader>4 <Plug>AirlineSelectTab4
      nmap <leader>5 <Plug>AirlineSelectTab5
      nmap <leader>6 <Plug>AirlineSelectTab6
      nmap <leader>7 <Plug>AirlineSelectTab7
      nmap <leader>8 <Plug>AirlineSelectTab8
      nmap <leader>9 <Plug>AirlineSelectTab9

      "if !exists('g:airline_symbols')
        "let g:airline_symbols = {}
      "endif
      "let g:airline_symbols.space = "\ua0"

      " unicode symbols
      "let g:airline_left_sep = '»'
      "let g:airline_left_sep = '▶'
      "let g:airline_right_sep = '«'
      "let g:airline_right_sep = '◀'
      "let g:airline_symbols.crypt = '🔒'
      "let g:airline_symbols.linenr = '␊'
      "let g:airline_symbols.linenr = '␤'
      "let g:airline_symbols.linenr = '¶'
      "let g:airline_symbols.branch = '⎇'
      "let g:airline_symbols.paste = 'ρ'
      "let g:airline_symbols.paste = 'Þ'
      "let g:airline_symbols.paste = '∥'
      "let g:airline_symbols.whitespace = 'Ξ'


 " == tagbar ==
 Plug 'vim-scripts/Tagbar'
    nnoremap <silent> <F9> :TagbarToggle<CR>
      "hide php variables
      let g:tagbar_type_php  = {
        \ 'ctagstype' : 'php',
        \ 'kinds'     : [
            \ 'i:interfaces',
            \ 'c:classes',
            \ 'd:constant definitions',
            \ 'f:functions',
            \ 'j:javascript functions:1'
        \ ]
      \ }

 "need compilation

 " == YouCompleteMe ==
 Plug 'Valloric/YouCompleteMe'
     let g:ycm_key_list_select_completion = [ '<TAB>', '<Down>' ]
     "sudo apt install ycmd

 Plug 'kshenoy/vim-signature'
 "Plug 'fatih/vim-go'
    "set autowrite
    "autocmd FileType go nmap <leader>b  <Plug>(go-build)
    "autocmd FileType go nmap <leader>r  <Plug>(go-run)
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

