set nocompatible              " be iMproved, required
set number
set mouse=a
filetype off                  " required



" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'Shutnik/jshint2.vim'
Plugin 'oplatek/Conque-Shell'
Plugin 'rking/ag.vim'
Plugin 'benmills/vimux'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'rhysd/vim-crystal'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mattreduce/vim-mix'
Plugin 'ngmy/vim-rubocop'
Plugin 'vim-ruby/vim-ruby'
Plugin 'burnettk/vim-angular'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
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
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

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

syntax on
set background=dark
let g:solarized_termcolors = 256
" colorscheme solarized
colorscheme molokai
set encoding=utf-8
set nowrap
set ignorecase
set fileformats+=mac
set list
set listchars=tab:▸\ ,eol:¬,trail:∙
set linebreak " wrap lines at convenient points
set nowritebackup
set autoread
set noswapfile
set nobackup
set showbreak=⇢\  " show wrapped lines
set laststatus=2 " always show status line
set ruler " show the cursor position all the time
set guioptions-=RLTrlt
set guifont=Meslo\ LG\ S\ for\ Powerline:h17
set expandtab " tab to spaces
set tabstop=2 " tab to two spaces
set foldmethod=indent   " fold based on indent
set foldnestmax=3       " deepest fold is 3 levels
set nofoldenable        " dont fold by default
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set smartindent
set wildmode=list:longest
set wildmenu                " Enable ctrl-n and ctrl-p to scroll thru matches

" Airline config:
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#tabline#enabled = 1

" NERDTree config:
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>c :NERDTree %<CR>
let NERDTreeMinimalUI  = 1
let NERDTreeShowHidden = 1
let g:NERDTreeWinSize  = 30  " Window size
let NERDTreeDirArrows  = 0   " No arrows, just | + and ~

" CtrlP config:
nmap <leader>p :CtrlP<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>P :CtrlP %:h<CR>
let g:ctrlp_mruf_relative = 1
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""' " use CtrlP for
" listing files
let g:ctrlp_use_caching = 0 " ag is fast enough, don't cache
let g:ctrlp_match_window = 'max:15'
let g:ctrlp_open_new_file = 'h' " open new file in a horizontal split

" Syntastic config:
let g:syntastic_check_on_open=1

"toggle paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
filetype plugin on
