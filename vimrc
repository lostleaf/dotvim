set nocompatible

"plugin directory
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

filetype plugin indent on "turn on filetype
syntax on "turn on syntax highlighting
set number "turn on line number
set fileencoding=utf8 "default encoding
set fileencodings=utf-8,ucs-bom,gb18030,default "encodings
set showmatch "show match braces
set showcmd "show typing command
set wildmenu "command completion
set laststatus=2 "status line
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %=%-16(\ %l,%c-%v\ %)[%{&fenc}]%P
set backspace=indent,eol,start "make backspace normal

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

"color scheme
try
    let g:solarized_termcolors=16
    colorscheme solarized
    set background=dark
    set t_Co=16
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme desert
endtry

autocmd FileType python setlocal formatprg=yapf "set formatter yapf
autocmd FileType python setlocal completeopt-=preview "disable preview window
"use ';r' to run current program
autocmd FileType python :nmap <silent> <Leader>r :!python %<CR>
"use ctrl-n to toggle nerd tree
nnoremap <C-n> :NERDTreeToggle<CR>

let mapleader = ";" "map leader to ;
let g:ctrlp_custom_ignore = 'build\|\.git' "exclude build and git
let g:python_highlight_all = 1 "python high all

"ale
let g:ale_sign_error = "\u2718"
let g:ale_sign_warning = "\u26A0"
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_python_pylint_options='--disable=C0111'

