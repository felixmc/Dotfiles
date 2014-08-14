syntax enable
set background=dark
colorscheme slate

set guifont=UbuntuMono\ 14

set ruler

filetype on
filetype plugin on
filetype indent on

set showcmd

set smartindent
set autoindent

set hlsearch

set wildmode=longest,list,full
set wildmenu

imap jj <esc>
inoremap gg <c-o>:w<cr>
inoremap ff <esc>:w<cr>

"hi Normal ctermfg=252 ctermbg=none
