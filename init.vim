call plug#begin(stdpath('data') . '/plugged')

" -- Syntax highlighting
Plug 'sheerun/vim-polyglot'

" -- Themes
Plug 'ayu-theme/ayu-vim'
Plug 'kaicataldo/material.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'projekt0n/github-nvim-theme'
Plug 'RRethy/nvim-base16'

Plug 'itchyny/lightline.vim' " Fancier statusline

call plug#end()

set termguicolors

colorscheme github_light

syntax on
set cursorline
hi CursorLine ctermbg=Black

set number		        " turn on line numbers
set relativenumber	  " line numbers are relative to current line
set nocompatible	    " don't try to be vi compatible
set expandtab		      " tabs -> spaces
set tabstop=2		      " tab = 2 cols
set shiftwidth=2
set smartindent
set incsearch
set hidden		        " allows you to open new files with unsaved changes in current buffer

" move between panes
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" alternate way to exit insert mode
:inoremap ii <Esc>
:inoremap jk <Esc>

" disable arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
