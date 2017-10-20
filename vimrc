" https://github.com/junegunn/vim-plug
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround' " (https://vimawesome.com/plugin/surround-vim)
Plug 'altercation/vim-colors-solarized'
Plug 'valloric/youcompleteme' " Follow installation instructions: (https://vimawesome.com/plugin/youcompleteme#mac-os-x)
" Initialize plugin system
call plug#end()




" Colorscheme
color desert

" Enable filetype plugins (this is automatically enabled by vim-plug so commenting out)
"filetype plugin on
"filetype indent on

" Turn on line numbering
set number
set relativenumber

" Turn on ruler to show line position (also can be shown with CTRL-G)
set ruler

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/elzr/vim-json/issues/52
"execute pathogen#infect()
syntax on
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Show status bar along with full file path
set laststatus=2
set statusline+=%F

" Allow mouse click to position cursor
set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Stop quotes from being hidden in json files
set conceallevel=0

" Disable automatic comment insertion on the next line
set formatoptions-=cro


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set the number of columns on the left for folding display to 3
set foldcolumn=3
" Set folding method to markers
"set foldmethod=marker
nnoremap <space> za

" Turn on folding for markdown files
let g:markdown_folding=1
