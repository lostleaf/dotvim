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
" Bundle 'klen/python-mode'

"auto completion
" Bundle 'davidhalter/jedi-vim'
" Bundle 'Valloric/YouCompleteMe'
Bundle "SirVer/ultisnips"
Bundle "honza/vim-snippets"
" Bundle "ervandew/supertab"

"syntax
Bundle 'hallison/vim-markdown'
Bundle 'vim-ruby/vim-ruby'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-haml'
Plugin 'pangloss/vim-javascript'
Plugin 'hdima/python-syntax'
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

colorscheme desert 

autocmd FileType html,haml,css set ts=2 sw=2 sts=2

autocmd FileType cpp,c :nmap <silent> <Leader>c :make %<<CR>
autocmd FileType cpp,c :nmap <silent> <Leader>r :!./%<<CR>

autocmd FileType java :compiler javac
autocmd FileType java :nmap <silent> <Leader>c :make %<CR>
autocmd FileType java :nmap <silent> <Leader>r :!java -ea %<<CR>

autocmd FileType ruby :nmap <silent> <Leader>r :!ruby %<CR>

autocmd FileType python :nmap <silent> <Leader>r :!python %<CR>
autocmd FileType python setlocal completeopt-=preview

autocmd FileType tex :nmap <silent> <Leader>c :!pdflatex %<CR>
autocmd FileType tex :nmap <silent> <Leader>r :!open %:r.pdf<CR>

" resolve confilction of youcompleteme and ultisnip
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
