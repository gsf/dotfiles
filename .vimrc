call pathogen#infect()

filetype plugin indent on
syntax on

set encoding=utf-8
set expandtab
set hidden
set incsearch
set noshowmatch
set showcmd
set smarttab
set sw=2
set ts=2
set ruler
set nowrap
set backspace=indent,eol,start
set bg=light

autocmd FileType python,php
  \ setlocal sw=4 |
  \ setlocal ts=4

let loaded_matchparen = 1  " Don't highlight brackets

nmap <silent> <c-d> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 35
let g:NERDTreeMinimalUI = 1

let g:syntastic_enable_signs=0
