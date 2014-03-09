" ***************  mapping *************** "
map <C-t> :tabnew<cr>
map <C-w> :tabclose<cr>
map <M-1> 1gt
map <M-2> 2gt
map <M-3> 3gt
map <M-4> 4gt
map <M-5> 5gt
map <M-6> 6gt
map <M-7> 7gt
map <M-8> 8gt
map <M-9> 9gt
map <M-0> 1gT

nmap <leader>tn :tabnew<cr>
nmap <leader>tc :tabclose<cr>
nmap <leader>1 1gt
nmap <leader>2 2gt
nmap <leader>3 3gt
nmap <leader>4 4gt
nmap <leader>5 5gt



map <LEADER>w :w<CR>
map <LEADER>q :q<CR>
map <LEADER>wq :wq<CR>
:map <Home> ^
map <End> $
:imap <Home> <Esc>^i
imap jk <Esc>
 " :map <End> A

" set VISUAL mode instead of SELECT on shift-arrows
nmap <S-Up> V
nmap <S-Down> V

"redo
nnoremap r <C-R>
noremap <M-q> <ESC>
" vnoremap <S-End> $

" Fast saving
nmap :W<cr> :w<cr>