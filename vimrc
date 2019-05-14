set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-scripts/indentpython.vim'

Plugin 'scrooloose/syntastic'

Plugin 'tpope/vim-fugitive'

Plugin 'bling/vim-airline'

Plugin 'nvie/vim-flake8'

Plugin 'jnurmine/Zenburn'

Plugin 'lilydjwg/colorizer'

Plugin 'Lokaltog/powerline'

Plugin 'rkulla/pydiction'

Plugin 'scrooloose/nerdtree'

"Plugin 'luochen1990/rainbow'

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

syntax enable
syntax on

let python_highlight_all=1

set backspace=indent,eol,start

set showcmd
set showmatch

set mouse=a

set smartindent
set autoindent

set confirm

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set number
set lbr

set history=1000

set hlsearch
set incsearch

set encoding=utf-8
set termencoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936

set ruler

set scrolloff=5

set autowrite

set wildmenu

set foldmethod=indent
set foldlevel=99

set clipboard=unnamedplus

"autocomplete
let g:pydiction_location='~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height=4

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

set nobackup

"for nerdtree map
map <C-o> :NERDTreeToggle<CR>

let g:ycm_confirm_extra_conf = 0 "disable question for ycm

"Set rainbox config
"let g:rainbow_active = 1

let g:airline_powerline_fonts=1

let g:ycm_global_ycm_extra_conf="~/.ycm_extra_conf.py"

"Autocomplete for brackets
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
