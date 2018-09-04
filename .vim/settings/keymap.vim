" ***************  mapping *************** "

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
"map <C-d> yyp
" vmap <C-p> y'}P "map to php-doc


" tabs. Tabbing selected section forward/back (don't write comments on right side of code, so as it thinks whitespace is command!)
vmap <Tab> >gv
vmap <S-Tab> <gv

" ---------- tagbar settings ------------- "
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

" **************** vim-textmanip ********************

xmap <M-d> <Plug>(textmanip-duplicate-down)
nmap <M-d> <Plug>(textmanip-duplicate-down)
xmap <M-D> <Plug>(textmanip-duplicate-up)
nmap <M-D> <Plug>(textmanip-duplicate-up)

map <C-Down> <Plug>(textmanip-move-down)
map <C-Up> <Plug>(textmanip-move-up)
map <C-h> <Plug>(textmanip-move-left)
map <C-l> <Plug>(textmanip-move-right)


" remap autocompletion html-tags to ,/
imap ,/ </<C-X><C-O>


 " == Unite =="
 
  " auto insert mode"
  let g:unite_enable_start_insert = 1

  "place right and bottom
  let g:unite_split_rule = "botright"

  "disable overwriting  statusline 
  let g:unite_force_overwrite_statusline = 0

  "size unite window
  let g:unite_winheight = 10

  "pretty icons
  let g:unite_candidate_icon="▷"

  "general find mapping 
  nnoremap <leader>f :<C-u>Unite -buffer-name=files -start-insert buffer file_rec/async:!<cr>
  
  "buffers
  "nnoremap <leader>b :<C-u>Unite -start-insert -auto-resize buffer<CR>


 " == AIRLINES == "
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


 " == YouCompleteMe == "
 let g:ycm_key_list_select_completion = [ '<TAB>', '<Down>' ]



"*****************************************************************************
""" Abbreviations
"*****************************************************************************
""" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall


" start a subshell. (go to bash without exiting vim)
nnoremap <LEADER>s :sh<CR>
