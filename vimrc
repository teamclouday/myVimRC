set nocompatible              " required
filetype off                  " required

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" A code-completion engine for Vim
Plug 'ycm-core/YouCompleteMe'

" Use any language server with YouCompleteMe
"Plug 'ycm-core/lsp-examples'

" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" A Vim plugin which shows git diff markers in the sign column and stages/previews/undoes hunks and partial hunks
Plug 'airblade/vim-gitgutter'

" Lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'

" A collection of themes for vim-airline
Plug 'vim-airline/vim-airline-themes'

" Powerline is a statusline plugin for vim
Plug 'powerline/powerline'

" Closes brackets
Plug 'rstacruz/vim-closer'

" A Vim plugin to colorize all text in the form #rrggbb or #rgb
"Plug 'lilydjwg/colorizer'

" hexokinase.vim - (Neo)Vim plugin for asynchronously displaying the colours in the file (#rrggbb, #rgb, rgb(a)? functions, hsl(a)? functions, web colours, custom patterns)
Plug 'RRethy/vim-hexokinase'

" Rainbow Parentheses Improved, shorter code, no level limit, smooth and fast, powerful configuration
"Plug 'luochen1990/rainbow'

" A tree explorer plugin for vim
Plug 'preservim/nerdtree'

" commentary.vim: comment stuff out
Plug 'tpope/vim-commentary'

" Molokai color scheme for Vim
"Plug 'tomasr/molokai'

" Adaptation of one-light and one-dark colorschemes for Vim
Plug 'rakr/vim-one'

" Vim support for Julia
Plug 'JuliaEditorSupport/julia-vim'

" Language Server Protocol (LSP) support for vim and neovim
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}

" markdown preview plugin for (neo)vim
Plug 'iamcco/markdown-preview.nvim' 

" Vim runtime files for OpenGL Shading Language
Plug 'tikhomirov/vim-glsl'


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

syntax enable
syntax on

set backspace=indent,eol,start

set showcmd
set showmatch

set mouse=a

set smartindent
set autoindent

set confirm
set secure

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

set updatetime=1500

set autowrite

set wildmenu

set foldmethod=indent
set foldlevel=99

set clipboard=unnamedplus

set t_Co=256

set tags=tags;
"set autochdir

"colo molokai
"colorscheme onehalfdark
"let g:airline_theme='onehalfdark'

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme one
let g:airline_theme='one'
set background=dark
hi Normal guibg=NONE ctermbg=NONE

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

"Set rainbox config
"let g:rainbow_active = 1

let g:airline_powerline_fonts = 1
let g:airline_section_z = airline#section#create(['windowswap', 'obsession', '%3p%%'.g:airline_symbols.space, 'linenr', 'maxlinenr', ':%3v'])
"let g:airline_theme = 'wombat'

let g:ycm_confirm_extra_conf = 0 "disable question for ycm
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"

"let g:molokai_original = 1

"Autocomplete for brackets
"inoremap ( ()<Esc>i
"inoremap { {}<Esc>i
"inoremap [ []<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i

" Configure Julia language server
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
\   'julia': ['julia', '--startup-file=no', '--history-file=no', '-e', '
\       using LanguageServer;
\       using Pkg;
\       import StaticLint;
\       import SymbolServer;
\       env_path = dirname(Pkg.Types.Context().env.project_file);
\       
\       server = LanguageServer.LanguageServerInstance(stdin, stdout, env_path, "");
\       server.runlinter = true;
\       run(server);
\   ']
\ }

" let g:julia_cmdline = ['julia', '--startup-file=no', '--history-file=no', '-e', '
" \       using LanguageServer;
" \       using Pkg;
" \       import StaticLint;
" \       import SymbolServer;
" \       env_path = dirname(Pkg.Types.Context().env.project_file);
" \
" \       server = LanguageServer.LanguageServerInstance(stdin, stdout, env_path, "");
" \       server.runlinter = true;
" \       run(server);
" \   ']
" let g:ycm_language_server = [
" \   { 
" \       'name': 'julia',
" \       'filetypes': [ 'julia' ],
" \       'project_root_files': [ 'Project.toml' ],
" \	    'cmdline': g:julia_cmdline
" \   },
" \ ]

let g:gitgutter_realtime = 1

let g:Hexokinase_highlighters = ['foreground']
let g:Hexokinase_ftEnabled = ['css', 'html', 'javascript']

" Configure markdown key map
nmap <C-p> <Plug>MarkdownPreviewToggle
