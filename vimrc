set nocompatible
filetype off

" bundles

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

let $GIT_SSL_NO_VERIFY = 'true'

"vundle
Bundle 'gmarik/vundle'

"utils
" Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-rails'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'
Bundle 'tristen/vim-sparkup'
Bundle 'tomtom/tcomment_vim'
Bundle 'Lokaltog/vim-easymotion'

"snippets
Bundle "SirVer/ultisnips"
Bundle "honza/vim-snippets"

"syntax
Bundle 'hallison/vim-markdown'
Bundle 'vim-ruby/vim-ruby'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-haml'
Bundle 'vim-scripts/NesC-Syntax-Highlighting'
call vundle#end()

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
set smarttab

set showmatch

set wildmenu

set laststatus=2
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %=%{rvm#statusline()}%-16(\ %l,%c-%v\ %)[%{&fenc}]%P

nmap <F3> :NERDTreeToggle<CR>
colorscheme desert 

augroup filetypedetect 
  au! BufRead,BufNewFile *nc setfiletype nc 
augroup END

autocmd FileType html,haml,css set ts=2 sw=2 sts=2

autocmd FileType cpp,c :nmap <silent> <Leader>c :make %<<CR>
autocmd FileType cpp,c :nmap <silent> <Leader>r :!./%<<CR>

autocmd FileType java :compiler javac
autocmd FileType java :nmap <silent> <Leader>c :make %<CR>
autocmd FileType java :nmap <silent> <Leader>r :!java -ea %<<CR>

autocmd FileType ruby :nmap <silent> <Leader>r :!ruby %<CR>
autocmd FileType python :nmap <silent> <Leader>r :!python %<CR>

autocmd FileType tex :nmap <silent> <Leader>c :!pdflatex %<CR>
autocmd FileType tex :nmap <silent> <Leader>r :!open %:r.pdf<CR>
" hi StatusLine ctermfg=black ctermbg=white
set helplang=cn
