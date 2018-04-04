set encoding=utf-8
set fileencodings=iso-2022-jp,iso-2022-jp-2,utf-8,euc-jp,sjis

set noerrorbells
set visualbell
set viminfo=

syntax enable
colorscheme slate

set hlsearch

set ts=4 
set softtabstop=4 
set nowrap
set virtualedit+=block
set autoread
set tw=0
set noerrorbells
set visualbell t_vb=
set expandtab
set ignorecase
set nu
set smartindent
set nocompatible
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start
nmap ff :ls<CR>:b
nmap <C-l> :bn<CR>
nmap <C-h> :bp<CR>
nmap <C-p> :bd<CR>:vs<CR>
map <C-j> <C-E><C-E>
map <C-k> <C-Y><C-Y>
nmap / /\v
vnoremap <silent> <C-p> "0p
let @f='/([0-9a-f]{8})'
let @m=':set virtualedit=block0'
let @h=':set virtualedit=all78zl'
nnoremap <space> i<space><esc>


set tags=.tags
nnoremap <C-]> g<C-]>
set ea

inoremap <silent> jj <ESC>

" Save fold settings.
autocmd BufWritePost * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif
autocmd BufRead * if expand('%') != '' && &buftype !~ 'nofile' | silent loadview | endif
autocmd BufLeave * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif
autocmd VimLeave * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif
" Don't save options.
set viewoptions-=options







