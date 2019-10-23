filetype plugin indent on
set shell=/bin/bash
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set encoding=utf8
set number

"linebreak
"set lbr
set tw=80
set wrapmargin=2

syntax enable
"colorscheme molokai
syntax on

set modeline
" Append modeline after last line in buffer.
" Use substitute() instead of printf() to handle '%%s' modeline in LaTeX
" files.
function! AppendModeline()
  let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d %set :",
        \ &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
  let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
  call append(line("$"), l:modeline)
endfunction
nnoremap <silent> <Leader>ml :call AppendModeline()<CR>

"Line number Stuff
"set relativenumber
"set number

"Speeds up vim
"let loaded_matchparen = 1

"Pressing space in normal mode adds a new line
nnoremap <space> o<esc>

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



