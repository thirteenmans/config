set nocp " No compatible
" Leader char
let mapleader=";"
" let g:mapleader=","
filetype plugin indent on " Enable filetype plugin
set autoread " Set to auto read when a file is changed outside
set wildmenu
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
set ruler " Always show current position
set number " Show line number
set colorcolumn=120 " Show line at 80 char
set ambiwidth=double
" set cursorline
" set cursorcolumn
" set cmdheight=2 " Height of the command bar
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase " Ignore case when searching
set smartcase
set hlsearch " Highlight search result
set incsearch " Make search act like search in modern browsers
set lazyredraw " Don't redraw while executing macros
set magic " For regular expressions turn magic on
set showmatch " Show matching brackets when text indicator is over them
set mat=2 " How many tenths of a second to blink when matching brackets
syntax enable
set encoding=utf8 " Set utf-8 as standard enconding and en_US as the standard language
set ffs=unix,dos,mac " Use Unix as the standard file type
set nobackup " Turn backup off, since most stuff is in git
set noswapfile
set tabstop=4 " 1 tab == 4 space
set shiftwidth=4
set expandtab " Use space instead of tab
set smarttab
set ai " Auto indent
set si " Smart indent
set nowrap
set nolist " Don't show char

" Yank to system clipboard
vnoremap <Leader>y "+y
" Paste system clipboard
nmap <Leader>p "+p
" Quit current window
nmap <Leader>q :q<CR>
" Save current window
nmap <Leader>w :w<CR>
" Save all windows and quit vim
nmap <Leader>WQ :wa<CR>:q<CR>
" Quit vim not save
nmap <Leader>Q :qa!<CR>
" Switch window
nnoremap nw <C-W><C-W>
" Go to right window
nnoremap <Leader>lw <C-W>l
" Go to left window
nnoremap <Leader>hw <C-W>h
" Go to up window
nnoremap <Leader>kw <C-W>k
" Go to down window
nnoremap <Leader>jw <C-W>j
nmap <silent> <Leader>bl :buffers<CR>
nmap <silent> <Leader>bf :bfirst!<CR>
nmap <silent> <Leader>be :blast!<CR>
nmap <silent> <Leader>bn :bnext!<CR>
nmap <silent> <Leader>bp :bprevious!<CR>
nmap <silent> <Leader>on :only<CR>
nmap <silent> <Leader>bg :b!
nmap <silent> <Leader>bd :bdelete
nmap <silent> <Leader>ba :%bdelete<CR>
nmap <silent> <Leader>bw :bwipeout
nmap <silent> <Leader>nh :nohls<CR>
nnoremap <silent> <Leader>sn :set number! number?<CR>
nnoremap <silent> <Leader>sw :set wrap! wrap?<CR>
" set foldmethod=syntax
" set nofoldenable

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
call vundle#end()
filetype plugin indent on

" set background=dark
" colorscheme phd

set t_Co=256
set background=dark
colorscheme molokai
let g:molokai_original=1

" set t_Co=256
" let g:solarized_termcolors=256
" set background=dark
" colorscheme solarized

" set background=dark
" let base16colorspace=256
" colorscheme base16-default-dark

" colorscheme pablo

set laststatus=2

let g:airline_theme="zenburn"
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#whitespace#enabled=0
let g:airline#extensions#whitespace#symbol='!'

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

nmap <Leader>nt :NERDTreeToggle<CR>
let NERDTreeWinSize=32
let NERDTreeWinPos="left"
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore=['^\.git$']
let NERDTreeShowLineNumbers=1
