"call pathogen#infect()

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

autocmd FileType python ",php  (the php i'm doing these days is 2 spaces)
  \ setlocal sw=4 |
  \ setlocal ts=4

let loaded_matchparen = 1  " Don't highlight brackets

"nmap <silent> <c-d> :NERDTreeToggle<CR>
"let g:NERDTreeWinSize = 35
"let g:NERDTreeMinimalUI = 1

"let g:syntastic_enable_signs=0

" See http://stackoverflow.com/questions/607435/why-does-vim-save-files-with-a-extension
set nobackup
set nowritebackup
set noswapfile

" See http://stackoverflow.com/questions/8420354/vim-run-commands-in-my-bashrc
" Commented out because it breaks netrw and scp://example.com/some-file
"set shellcmdflag=-ic

" See http://stackoverflow.com/questions/526858/how-do-i-make-vim-do-normal-bash-like-tab-completion-for-file-names
set wildmode=longest,list,full

" See http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
" Allow saving of files as sudo when I forget to start vim using sudo.
"cmap w!! %!sudo tee > /dev/null %

" http://kien.github.io/ctrlp.vim/#installation
set runtimepath^=~/.vim/bundle/ctrlp.vim
" Don't do any clever directory sniffing
let g:ctrlp_working_path_mode = ''

" Easy most-recent-buffer switching
nnoremap <Tab> :b#<CR>

" :W and :Q act like :w and :q
command W w
command Q q
command Wq wq
command WQ wq

" Single space when joining and justifying
set nojoinspaces
