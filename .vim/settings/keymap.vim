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

" Move tabs with alt + left|right
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

map <LEADER>w :w<CR>
map <LEADER>q :q<CR>
map <LEADER>wq :wq<CR>
map :W :w<CR>
map :Q :q<CR>
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


"duplicate current line
map <C-d> yyp
vmap <C-p> y'}P


" tabs. Tabbing selected section forward/back (don't write comments on right side of code, so as it thinks whitespace is command!)
vmap <Tab> >gv
vmap <S-Tab> <gv

" ---------- tagbar settings ------------- "
nnoremap <silent> <F9> :TagbarToggle<CR>


" **************** vim-textmanip ********************

xmap <M-d> <Plug>(textmanip-duplicate-down)
nmap <M-d> <Plug>(textmanip-duplicate-down)
xmap <M-D> <Plug>(textmanip-duplicate-up)
nmap <M-D> <Plug>(textmanip-duplicate-up)

map <C-Down> <Plug>(textmanip-move-down)
map <C-Up> <Plug>(textmanip-move-up)
map <C-h> <Plug>(textmanip-move-left)
map <C-l> <Plug>(textmanip-move-right)
