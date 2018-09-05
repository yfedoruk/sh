" == Type Script ==
 Plug 'Quramy/tsuquyomi'

" == Golang ==
 Plug 'fatih/vim-go'
    set autowrite
    autocmd FileType go nmap <leader>b  <Plug>(go-build)
    autocmd FileType go nmap <leader>r  <Plug>(go-run)
