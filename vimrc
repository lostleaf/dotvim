set nocompatible
filetype off

" bundles

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

let $GIT_SSL_NO_VERIFY = 'true'

"vundle
Bundle 'gmarik/vundle'

"tree explorer
Bundle 'scrooloose/nerdtree'

"fuzzy finder
Bundle 'kien/ctrlp.vim' 

"change surroundings
Bundle 'tpope/vim-surround' 

"comment lines
Bundle 'tomtom/tcomment_vim' 

"jump to anywhere
Bundle 'Lokaltog/vim-easymotion' 

"snippets
Bundle "SirVer/ultisnips"
Bundle "honza/vim-snippets"

"syntax
Plugin 'vim-python/python-syntax'

"color scheme
Plugin 'altercation/vim-colors-solarized'

"syntax check
Plugin 'w0rp/ale'

"auto completion
Plugin 'davidhalter/jedi-vim'
call vundle#end()
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

autocmd FileType python :nmap <silent> <Leader>r :!python %<CR>
"disable docstring
autocmd FileType python setlocal completeopt-=preview

nnoremap <C-n> :NERDTreeToggle<CR>

"exclude build and git
let g:ctrlp_custom_ignore = 'build\|\.git'

"map leader to ,
:let mapleader = ","

"python high all
let g:python_highlight_all = 1
