set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Python proper indentation
Plugin 'vim-scripts/indentpython.vim'
" SimpylFold applies folding per classes and methods
"Plugin 'tmhedberg/SimpylFold'
" Python autocomplete
Bundle 'Valloric/YouCompleteMe'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Python pep8
Plugin 'nvie/vim-flake8'
" zenburn is a colorscheme
Plugin 'jnurmine/Zenburn'
"solarized colorscheme
Plugin 'altercation/vim-colors-solarized'
"Nerdtree is a file tree for file browsing
Plugin 'scrooloose/nerdtree'
"Nerdtabs
Plugin 'jistr/vim-nerdtree-tabs'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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
" For python files, do the follwing
"" \ set foldmethod=indent |
" \ set foldnestmax=1 | 

au BufNewFile,BufRead *.py
    \ set softtabstop=4 |
    \ set textwidth=79 |
    \ set expandtab | 
    \ set autoindent | 
    \ set fileformat=unix

au BufNewFile,BufRead *.yml
    \ set softtabstop=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set number

au BufNewFile,BufRead *.yaml
    \ set softtabstop=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set number

au BufNewFile,BufRead *.conf
    \ set softtabstop=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set nonumber



let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let g:ycm_autoclose_preview_window_after_completion=1

"Open nerdtree automatically
"autocmd vimenter * NERDTree

"Close vim if only nerdtree is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:nerdtree_tabs_smart_startup_focus=1
"If no file specified - open Nerdtree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Set colors and schemes
let python_highlight_all=1
syntax on
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

set encoding=utf-8
set clipboard=unnamed
set expandtab
set tabstop=4
set shiftwidth=4
set number
set colorcolumn=81
"Map to unfold using space instead of za
nnoremap <space> za
set list
set listchars=tab:>·
