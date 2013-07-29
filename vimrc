set nocompatible
filetype off

" bundles

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

let $GIT_SSL_NO_VERIFY = 'true'

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rails'
Bundle 'hallison/vim-markdown'
Bundle 'msanders/snipmate.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'

" settings
filetype plugin indent on

syntax on

set number

set hlsearch
set incsearch
set gdefault
set smartcase

set autoindent
set smartindent

set backspace=indent,eol,start

set fileencoding=utf8
set fileencodings=utf-8,ucs-bom,gb18030,default

set tabstop=4
set shiftwidth=4
set softtabstop=4 
set expandtab

set showmatch

set wildmenu

set laststatus=2
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)[%{&fenc}]%P

nmap <F3> :NERDTreeToggle<CR>
colorscheme desert 
hi StatusLine ctermfg=black ctermbg=white
