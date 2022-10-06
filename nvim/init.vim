" enable syntax highlighting
syntax on

" Better colors
set termguicolors

" number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab

" enable autoindents
set smartindent


" number of spaces used for autoindents
set shiftwidth=4

" adds line numbers
set number

" columns used for the line number
set numberwidth=4

" highlights the matched text pattern when searching
set incsearch
set nohlsearch

" opens splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from the top or bottom
set scrolloff=8

" save undo history
set undofile

" enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

" hide modes since we are using lightline plugin
set noshowmode

set signcolumn=number

call plug#begin('~/.config/nvim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do' : 'make'}
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

call plug#end()

" declare colorscheme
colorscheme gruvbox

" use this for dark color schemes
set background=dark

lua require('mdzahedhossain')
