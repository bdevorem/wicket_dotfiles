set shell=/bin/bash
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nowrap
set encoding=utf8

"linebreak
set lbr
set tw=500

syntax enable
colorscheme molokai
syntax on


"Line number Stuff
"set relativenumber
"set number

"Speeds up vim
"let loaded_matchparen = 1

"Pressing space in normal mode adds a new line
nnoremap <space> o<esc>
" 0 to ^
map 0 ^

"Yanks are added to the clipboard.
set clipboard=unnamed
set clipboard=unnamedplus

filetype plugin on
filetype indent on

set autoread

":W sudo saves
command W w !sudo tee % > /dev/null

set wildmenu
set cmdheight=2
set hid
set ignorecase
set smartcase
set hlsearch
"regex
set magic



