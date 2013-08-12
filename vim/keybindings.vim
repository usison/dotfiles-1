" Map Leader: Reset from \ to ,
let mapleader = ","

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" NERDTree: Open with F2
nmap <Leader>N :NERDTreeToggle<CR>

" AckVim: <leader>f to search
map <leader>f :Ack<Space>

" Toggle line numbers
nmap <Leader>n :set number! number?<cr>

" Toggle search highlights
nmap <Leader>h :set hlsearch! hlsearch?<cr>

" Shortcuts for writing the file...
map <Leader>w :w<cr>
imap <Leader>w <esc>:w<cr>

" and quitting
map <Leader>q :qall<cr>
imap <Leader>q <esc>:qall<cr>

" JSLint for current javascript file
nmap <F4> :w<CR>:make<CR>:cw<CR>

" CtrlP
nnoremap <Leader>t :CtrlP<CR>
nnoremap <Leader>ff :CtrlPClearCache<CR>
noremap <Leader>fb :CtrlPBuffer<CR>

" Copy/Paste
vmap <Leader>c "+yy
map <Leader>v "+p
map <Leader>cf :let @*=expand("%")<CR>
map <Leader>cff :let @*=expand("%:p")<CR>

" Fugitive
map <leader>gb :Gblame<CR>
map <leader>gs :Gstatus<CR>
map <leader>gd :Gdiff<CR>
map <leader>gl :Glog<CR>
map <leader>gc :Gcommit<CR>
map <leader>gpu :Git pull --rebase<CR>
map <leader>gps :Git push<CR>

"Autocomplete
"imap <tab> <c-x><c-o>
inoremap <c-x><c-]> <c-]>

nmap <leader>gr :Ggrep
" ,gw for global git serach for word under the cursor (with highlight)
nmap <leader>gw :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ggrep -w "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>
" same in visual mode
vmap <leader>gw y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ggrep -F "<C-R>=escape(@", '\\"#')<CR>"<CR>:ccl<CR>:cw<CR><CR>

map <Leader>rt :!gemtags -f .gemtags && ctags -R -f .tags

"Jump To Specs
let g:speckySpecSwitcherKey  = "<C-S>x"

"Jump to DASH
nmap <silent> <leader>d <Plug>DashSearch
