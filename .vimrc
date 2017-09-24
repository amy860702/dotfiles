set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'vim-scripts/matchit.zip'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" general settings
set number
set relativenumber
syntax on
set background=dark
set cursorline
set lazyredraw
set backspace=2
set matchpairs+=<:>
set ambiwidth=double
set list
set listchars=tab:>-,trail:~
set nobomb
set nobackup nowritebackup
set viminfo="NONE"
set visualbell
set wildmenu

" status bar settings
set ruler
set showcmd
set showmode
set laststatus=2
set cmdheight=2

" search settings
set hlsearch
set incsearch
set ignorecase
set smartcase

" encoding settings
set encoding=utf-8
set fileencodings=utf-8,default,big5

" indentation settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set copyindent

" parenthesis completion
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {<Tab> {
inoremap {}     {}

inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [<Tab> [
inoremap []     []

inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap (<Tab> (
inoremap ()     ()

inoremap '      ''<Left>
inoremap '<Tab> '
inoremap ''     ''

inoremap "      ""<Left>
inoremap "<Tab> "
inoremap ""     ""

highlight PmenuSel ctermfg=0 ctermbg=3 guibg=DarkGrey

autocmd BufNewFile,BufRead *.phtml set filetype=php

augroup xmlfiletype
    autocmd!
    autocmd FileType xml set noexpandtab
augroup END

" show hidden files when using plugins
let g:ctrlp_show_hidden = 1
let NERDTreeShowHidden=1
