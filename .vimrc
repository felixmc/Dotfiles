set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree.git'
Plugin 'bling/vim-airline'
Plugin 'amix/open_file_under_cursor.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-fugitive'
Plugin 'derekwyatt/vim-scala'
Plugin 'Raimondi/delimitMate'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'elzr/vim-json'
Plugin 'gregsexton/MatchTag'
Plugin 'othree/html5.vim'
Plugin 'majutsushi/tagbar'

" All of Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" GUI options
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=L

map <silent> <F11>
\    :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>

set laststatus=2
autocmd BufRead,BufNewFile /etc/nginx/sites-*/* setfiletype conf
autocmd vimenter * NERDTree

syntax enable
set background=dark
colorscheme gotham

" disable error beep/flash
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set guifont=UbuntuMono\ 13

set ruler

filetype on
filetype plugin on
filetype indent on

set showcmd

set smartindent
set autoindent
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
set number

set hlsearch

set wildmode=longest,list,full
set wildmenu

imap jj <esc>
inoremap gg <c-o>:w<cr>
inoremap vv <esc>:w<cr>
imap <C-Space> <C-X><C-O>
nmap <F8> :TagbarToggle<CR
