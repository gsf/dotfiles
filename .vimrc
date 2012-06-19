call pathogen#infect()

set expandtab
set hidden
set incsearch
set noshowmatch
set showcmd
set smartcase
set smarttab
set sw=2
set ts=2
set ruler
set mouse=a

autocmd FileType python,php
  \ setlocal sw=4 |
  \ setlocal ts=4

let loaded_matchparen = 1  " Don't highlight brackets

nmap <silent> <c-d> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 40
let g:NERDTreeMinimalUI = 1
