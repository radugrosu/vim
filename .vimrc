"Plugins
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'tomtom/tcomment_vim'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'shime/vim-livedown'
Plugin 'Valloric/YouCompleteMe'
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

"let g:EasyMotion_do_mapping = 0 " Disable default mappings
"nmap z <Plug>(easymotion-s)

set omnifunc=syntaxcomplete#Complete
nmap gm :LivedownToggle<CR>
colorscheme badwolf         " awesome colorscheme

syntax enable               " enable syntax processing

set tabstop=4               " number of visual spaces when reading a TAB
set softtabstop=4           " number of spaces in tab when hitting <TAB>
set shiftwidth=4
set paste                   " prevent retabbing when pasting
set expandtab               " tabs are spaces
set clipboard+=unnamed      " use the clipboard of vim
set go+=a                   " visual selection automatically copied to clipboard

"UI Config
set history=200             " increase the nubmer of items in recorded history
set number                  " show line numbers
set showcmd                 " show command in buttom bar
set cursorline              " highlight current line
set wildmenu                " visual autocomplete for command menu
set lazyredraw              " redraw only when we need to
set showmatch               " highlight matching [{()}]
set incsearch               " search as characters are entered
set hlsearch                " highlight matches
let mapleader="\<Space>"           " leader is ...
noremap <Leader>t :NERDTree<CR>
nnoremap <Leader>m :noh<CR> " turn off search highlight
set foldenable              " enable folding
set foldlevelstart=10       " open most folds by default
set foldnestmax=10          " 10 nested folds max
set foldmethod=indent       " fold based on indent level

" MOVEMENT
nnoremap B ^
nnoremap E $
nnoremap gV `[v`]           " highlight last inserted text

nnoremap <leader>u :GundoToggle<CR> " toggle gundo undo tree
