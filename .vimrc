set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tmhedberg/matchit'

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
syntax on
set background=dark
set cursorline
set lazyredraw
set backspace=indent,eol,start
set secure
set matchpairs+=<:>
set ambiwidth=double
set list
set listchars=tab:>-,trail:~
set nobomb
set nobackup nowritebackup
set viminfo="NONE"

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
set smartindent

" parenthesis completion
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []

inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

inoremap '      ''<Left>
inoremap '<CR>  '<CR>'<Esc>O
inoremap ''     '
inoremap ''     ''

inoremap "      ""<Left>
inoremap "<CR>  "<CR>"<Esc>O
inoremap ""     "
inoremap ""     ""

highlight PmenuSel ctermfg=0 ctermbg=3 guibg=DarkGrey

augroup xmlfiletype
    autocmd!
    autocmd FileType xml set noexpandtab
augroup END

au BufNewFile,BufRead *.phtml set filetype=php
au BufNewFile,BufRead *.htm set filetype=php
au BufNewFile,BufRead *.html set filetype=php
au FileType php so ~/.vim/indent/php.vim

source ~/.vim/php-doc.vim
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
nnoremap q :quit<CR>

" show hidden files when using plugins
let g:ctrlp_show_hidden = 1
let NERDTreeShowHidden=1
