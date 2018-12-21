set nocompatible

" Plugin directory
call plug#begin('~/.vim/plugged')

Plug 'gmarik/vundle' "vundle
Plug 'scrooloose/nerdtree' "tree explorer
Plug 'kien/ctrlp.vim' "fuzzy finder
Plug 'tpope/vim-surround' "change surroundings
Plug 'tomtom/tcomment_vim' "comment lines
Plug 'Lokaltog/vim-easymotion' "jump to anywhere
Plug 'SirVer/ultisnips' "snippets
Plug 'honza/vim-snippets'
Plug 'vim-python/python-syntax' "syntax
Plug 'altercation/vim-colors-solarized' "color scheme
Plug 'w0rp/ale' "syntax check

call plug#end()

"turn on filetype
filetype plugin indent on
"vundle end

"turn on syntax highlighting
syntax on

"turn on line number
set number

"search settings
set hlsearch
set incsearch
set gdefault
set smartcase

"indentation
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4 
set expandtab
set smarttab

"make backspace normal
set backspace=indent,eol,start

"encodings
set fileencoding=utf8
set fileencodings=utf-8,ucs-bom,gb18030,default

"show match braces
set showmatch

"show typing command
set showcmd

"command completion
set wildmenu

"status line
set laststatus=2
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %=%-16(\ %l,%c-%v\ %)[%{&fenc}]%P

"color scheme
let g:solarized_termcolors=16
colorscheme solarized
set background=dark
set t_Co=16

"use ';r' to run current program
autocmd FileType python :nmap <silent> <Leader>r :!python %<CR>

"set formatter yapf
autocmd FileType python setlocal formatprg=yapf

"disable preview window
autocmd FileType python setlocal completeopt-=preview

nnoremap <C-n> :NERDTreeToggle<CR>

"exclude build and git
let g:ctrlp_custom_ignore = 'build\|\.git'

"map leader to ;
:let mapleader = ";"

"python high all
let g:python_highlight_all = 1
