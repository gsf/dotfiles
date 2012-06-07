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

autocmd FileType python,php
  \ setlocal sw=4 |
  \ setlocal ts=4

let loaded_matchparen = 1  " Don't highlight brackets

" Start NERDTree when vim started without arguments
autocmd VimEnter * if argc() == 0 | NERDTree | endif
