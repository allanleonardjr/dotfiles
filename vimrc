" To Install The Plugin Manager follow these directions
" https://github.com/junegunn/vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" - Avoid using standard Vim directory names like 'plugin'
"   ============================================================
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-surround' " (https://vimawesome.com/plugin/surround-vim)
Plug 'chrisbra/Colorizer'
"Plug 'altercation/vim-colors-solarized'
"" https://github.com/mxw/vim-jsx
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
"Plug 'valloric/youcompleteme' " Follow installation instructions: (https://vimawesome.com/plugin/youcompleteme#mac-os-x)
Plug 'gorkunov/smartpairs.vim' " This allows smart selections to convert 'vi*' commands into 'viv' commands
Plug 'wellle/targets.vim'
Plug 'sbdchd/neoformat'
Plug 'jkramer/vim-checkbox' " If not working then follow installation instructions from: https://github.com/jkramer/vim-checkbox
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'machakann/vim-highlightedyank'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tyru/open-browser.vim'
Plug 'Valloric/MatchTagAlways' "Used to highlight matching XML/HTML tags that enclose the cursor location
Plug 'vimwiki/vimwiki', {'branch': 'dev'}
Plug 'mattn/calendar-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'flazz/vim-colorschemes'
Plug 'felixhummel/setcolors.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'makerj/vim-pdf'
Plug 'tpope/vim-obsession'
" Decided to use grip for realtime markdown previews - (https://github.com/joeyespo/grip)
"Plug 'previm/previm' 
"Plug 'suan/vim-instant-markdown' " --- (not working - https://github.com/suan/instant-markdown-d/issues/13)

" Asynchronous completion
if has('nvim') " https://github.com/Shougo/deoplete.nvim
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
" Binary path to your flow, defaults to your $PATH flow 
let g:deoplete#sources#flow#flow_bin = 'flow' 


" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'html', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

" Follow installation instructions: (https://vimawesome.com/plugin/youcompleteme#mac-os-x)
" 1.) cd ~/.vim/plugged/youcompleteme
" 2.) ./install.py
"Plug 'valloric/youcompleteme' 
" Initialize plugin system
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set dark solarized theme
"set term=xterm-256color
set background=dark
color  palenight "solarized8_dark_flat

" Colorizer
"let g:colorizer_auto_color = 1
let g:colorizer_auto_filetype='css,html,js,jsx,javascript,javascript.jsx'

syntax on
" -- Autocompletion --
filetype plugin indent on
"set omnifunc=syntaxcomplete#Complete " https://medium.com/vim-drops/css-autocompletion-on-vim-no-plugins-needed-e8df9ce079c7


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show status bar along with full file path
"set laststatus=2

" Set Airline Theme
let g:airline_theme = 'soda'

" Enable powerline font (so we can get those pretty arrows on the status lines)
let g:airline_powerline_fonts = 1

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

" Show the command letters (down in the status area) as we type them
set showcmd

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Allow mouse click to position cursor
set mouse+=a
"set ttymouse=xterm2

" Decrease update time from 4 seconds to 250 miliseconds
set updatetime=250 " suggested by vim-gutter


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

" Show numbering and relative numbering 
set number
set relativenumber

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set the number of columns on the left for folding display to 3
set foldcolumn=3
" Set folding method to markers
"set foldmethod=marker
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Turn on folding for markdown files
let g:markdown_folding=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" By default, JSX syntax highlighting and indenting will be enabled only for files with the .jsx extension. If you would like JSX in .js files, add:
let g:jsx_ext_required = 0

" Clipboard
" set clipboard=unnamed

" Checkboxes
let g:checkbox_states = [' ', '-', 'X']

" Markdown Previewing in Browser
"   :PrevimOpen - Opens the current file on the browser.
"let g:previm_enable_realtime=1 " This will update the browser in realtime

" make vim-fugitive (and others) use vertical splits instead of horizontal
set diffopt+=vertical

" MatchTagAlways jump to the closing tag
nnoremap <Leader>% :MtaJumpToOtherTag<CR>

" Sets the filetypes for MatchTagAlways to work on
let g:mta_filetypes = {
    \ 'javascript.jsx' : 1,
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \}

" vimwiki/vimwiki
let g:vimwiki_list = [
  \{'path': '~/vimwiki/personal', 'syntax': 'markdown', 'ext': '.md'},
  \{'path': '~/vimwiki/3jpmedia', 'syntax': 'markdown', 'ext': '.md'},
  \{'path': '~/vimwiki/spiritual', 'syntax': 'markdown', 'ext': '.md'},
  \]
let g:vimwiki_table_mappings=1

"Mappings
" This will allow us to type "kj" in insert mode to act as if we pressed the Escape key
inoremap kj <esc>

" Quickly save files by using ",," 
nnoremap ,, :w<CR>
"inoremap ,, <C-c>:w<CR>a

" Terminal Settings
highlight TermCursor ctermfg=red guifg=red
tnoremap <ESC> <C-\><C\n>
tnoremap kj <C-\><C-n>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open NERDTree regardless of whether a file was opened or not
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd l

" Open NERDTree ONLY if no file was opened when starting Vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | wincmd l | endif

" Close Vim if NERDTree is the only remaining window opened
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') | q | endif

" Mappings
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <Leader>g :NERDTreeFind<Enter>
noremap <F8> :NERDTreeToggle<CR>
nnoremap ; :Buffers<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Searching, Yanking, Etc.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists('&inccommand')
  "	"nosplit": Shows the effects of a command incrementally, as you type.
  "	"split"	 : Also shows partial off-screen results in a preview window.
  set inccommand=split " Either split or nosplit
endif

" Tired of clearining highlighted searches by searching for "asdfdfllhkj"? Use this:
nnoremap ,/ :nohlsearch<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ESLint though Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://medium.com/@alexlafroscia/writing-js-in-vim-4c971a95fd49
let g:ale_fixers = {
  \ 'javascript': ['eslint']
  \ }


" Increase the timeout so we we have more time to use commands (like the surround command)
set timeout timeoutlen=3000

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Windows/Tabs, Splits 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Some good nuggets on: https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
" Open new split panes to right and bottom, which feels more natural than Vim’s default:
set splitbelow
set splitright

" We can use different key mappings for easy navigation between splits to save a keystroke. 
" So instead of ctrl-w then j, it’s just ctrl-j: Mapping left, down, up, right
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
" Mappings to easily move a split to left, bottom, top, right
nnoremap <CS-h> <C-w><S-h>
nnoremap <CS-j> <C-w><S-j>
nnoremap <CS-k> <C-w><S-k>
nnoremap <CS-l> <C-w><S-l>


" Go to tab by number (similar to Chrome but using Leader keep instead of Command Key)
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
nnoremap <Leader>t :tabnew<CR>
