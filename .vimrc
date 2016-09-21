set background=dark
set ruler
set secure
set hlsearch
set ignorecase
set number
set showcmd
set encoding=utf-8
set fileencodings=utf-8,default,big5
set backspace=indent,eol,start
set shiftwidth=4
set softtabstop=4
set tabstop=8
set matchpairs+=<:>
set ambiwidth=double
"set autoindent
set nocopyindent
set nocindent
set list
set listchars=tab:>-,trail:~
set nobomb
"不備份
set nobackup nowritebackup
"關掉viminfo
set viminfo="NONE"
set cursorline
set incsearch
set laststatus=2
set cmdheight=2
set smartcase
set showmode

highlight PmenuSel ctermfg=0 ctermbg=3 guibg=DarkGrey

set expandtab

augroup xmlfiletype
    autocmd!
    autocmd FileType xml set noexpandtab
augroup END

syntax on

au BufNewFile,BufRead *.phtml set filetype=php
au BufNewFile,BufRead *.htm set filetype=php
au BufNewFile,BufRead *.html set filetype=php
au FileType php so ~/.vim/indent/php.vim

source ~/.vim/php-doc.vim
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
nnoremap q :quit<CR>
