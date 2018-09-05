" ***************  plugins *************** "

call plug#begin('~/.vim/plugged')

 Plug 'Shougo/vimproc.vim', { 'build': {'linux': 'make'} }		"cd ~/.vim/bundle/vimproc.vim && make
 Plug 'mhinz/vim-startify'
 Plug 'jiangmiao/auto-pairs'
 " Plug 'ervandew/supertab'
 " Plug 'xolox/vim-misc.git'
 " Plug 'xolox/vim-session.git'
     "let g:session_autoload = 'no'   "for vim-session.git
     "let g:session_autosave = 'no'  "for vim-session.git
 " Plug 'terryma/vim-multiple-cursors'
    "let g:multi_cursor_next_key='<C-l>'
 " filetype plugin indent on     " required!


" == vim-textmanip ==
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
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'scrooloose/syntastic'

 Plug 'yegappan/mru'
    nmap <leader>h :MRU<CR>

 " == fzf ==
     Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
     Plug 'junegunn/fzf.vim'
        nmap <leader>b :Buffers<CR>

 " == AIRLINES ==
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

 " *** need compilation ***

 " == YouCompleteMe ==
     Plug 'Valloric/YouCompleteMe'
         let g:ycm_key_list_select_completion = [ '<TAB>', '<Down>' ]
         "sudo apt install ycmd

" == Plugin to toggle, display and navigate marks
    Plug 'kshenoy/vim-signature'

 " == Solarized ==
     Plug 'altercation/vim-colors-solarized'
        let g:solarized_termcolors=256
        syntax enable
        set background=dark
        "colorscheme solarized

call plug#end()

" To ignore plugin indent changes, instead use:
filetype on

