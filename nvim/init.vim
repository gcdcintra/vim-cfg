" indent configs for 2 spaces
set tabstop=8
set softtabstop=8
set shiftwidth=8
set autoindent
set noexpandtab
set wildmode=longest,list

filetype plugin on
filetype plugin indent on  " allow auto-indenting depending on file
syntax on                  " syntax highlighting
set number                 " show line numbers
set cc=80                  " set an 80 columm delimiter indicator

set clipboard=unnamedplus  " use system clipboard
set mouse=v                " mouse click paste with
set mouse=a                " enable mouse click
set cursorline             " highlight current cursor line
set ttyfast                " increase scrolling speed
set noswapfile             " disable swap file

set nocompatible           " disable compatibility to old-time vi
set showmatch              " show matching
set ignorecase             " case insensitive
set hlsearch               " highlight search
set incsearch              " incremental search

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" download plugvim
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugin section
call plug#begin(stdpath('data'))
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" color scheme
if (has("termguicolors"))
set termguicolors
endif
syntax enable
colorscheme dracula

" open new split panes to right and below
set splitright
set splitbelow

" move split panes to left/bottom/top/right
nnoremap <A-H> <C-W>H
nnoremap <A-J> <C-W>J
nnoremap <A-K> <C-W>K
nnoremap <A-L> <C-W>L

" move between panes to left/bottom/top/right
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
