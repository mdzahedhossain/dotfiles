set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Git wrapper for vim
Plugin 'tpope/vim-fugitive'

Plugin 'kien/ctrlp.vim'

" tmux resurrect
Plugin 'tmux-plugins/tmux-resurrect'
Plugin 'tmux-plugins/tmux-continuum'

" NerdTree for FileSystem explorer
Plugin 'preservim/nerdtree'



" Syntax checker
Plugin 'vim-syntastic/syntastic'

" Syntax highlighter
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'

Plugin 'sheerun/vim-polyglot'

Plugin 'ycm-core/YouCompleteMe'

Plugin 'morhetz/gruvbox'

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
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
" ==== Syntastic Related Configuration ======
 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ==== Syntastic plugin configuration end ====

" === Gruvbox Plugin Configuration ====
set background=light   " Setting light mode
set ruler
set number
set autoindent
set autoread
set backspace=indent,eol,start

let g:gruvbox_transparent_bg = '1'
let &t_SI = "\e[6 q" 
let &t_EI = "\e[2 q" 

autocmd vimenter * ++nested colorscheme gruvbox
" === Gruvbox plugin configuration end =====
