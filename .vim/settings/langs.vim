" == Type Script ==
 Plug 'Quramy/tsuquyomi'

" == Golang ==
 Plug 'fatih/vim-go'
    set autowrite
    autocmd FileType go nmap <leader>b  <Plug>(go-build)
    autocmd FileType go nmap <leader>r  <Plug>(go-run)


 " == PHP ==
     " Generates PHP docblocks
     Plug 'tobyS/pdv'
     Plug 'tobyS/vmustache' " required
     " Plug 'SirVer/ultisnips'  "sudo pip install neovim or pip3 install neovim
