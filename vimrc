""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Jose Constela 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
syntax on
set nowrap
set encoding=utf8

" Vundle setup
filetype off " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'mkitt/tabline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'BufOnly.vim'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'airblade/vim-gitgutter'

" Generic Programming Support 
Plugin 'gilsondev/searchtasks.vim' " TODO not working
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'Townk/vim-autoclose'

" Stlying
Plugin 'ajh17/Spacegray.vim'
Plugin 'ryanoasis/vim-devicons'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Git
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ruler                       " Show row and column ruler information
set number                      " Show line numbers
set showmatch                   " Highlight matching brace
set visualbell                  " Use visual bell (no beeping)
set cursorline                  " Enable highlighting of the current line

"""""""""""""""""""""""
" Nerdtree
"""""""""""""""""""""""
map <C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"""""""""""""""""""""""
" Generic Programming Support 
"""""""""""""""""""""""
let g:mustache_abbreviations = 1

"""""""""""""""""""""""
" Theme
"""""""""""""""""""""""
colorscheme spacegray
let g:spacegray_underline_search = 1
" let g:spacegray_use_italics = 1 " Use italics when appropriate - for comments

" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum""

set t_Co=256
set background=dark

if (has("termguicolors"))
  set termguicolors
endif

let base16colorspace=256  " Access colors present in 256 colorspace

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
" let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 

"""""""""""""""""""""""
" Search
"""""""""""""""""""""""
set ignorecase                  " Always case-insensitive
set hlsearch                    " Highlight all search results
set incsearch                   " Searches for strings incrementally

"""""""""""""""""""""""
" Buffers
"""""""""""""""""""""""
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

"""""""""""""""""""""""
" Indents and tabs
"""""""""""""""""""""""
set autoindent                  " Auto-indent new lines
set expandtab                   " Use spaces instead of tabs
set shiftwidth=2                " Number of auto-indent spaces
set smartindent                 " Enable smart-indent
set smarttab                    " Enable smart-tabs
set tabstop=2                   " Number of spaces per Tab
set softtabstop=2               " Number of spaces per Tab

" other
let g:airline#extensions#tabline#enabled = 1

"""""""""""""""""""""""
" Advanced
"""""""""""""""""""""""
set laststatus=2                " Always display the status line
let g:elite_mode=1              " Enable Elite mode, No ARRRROWWS!!!

" noremap <Up> <NOP>              " Enable Elite mode, No ARRRROWWS!!!!
" inoremap <Up> <NOP>              " Enable Elite mode, No ARRRROWWS!!!!
" vnoremap <Up> <NOP>              " Enable Elite mode, No ARRRROWWS!!!!
" noremap <Down> <NOP>            " Enable Elite mode, No ARRRROWWS!!!!
" inoremap <Down> <NOP>            " Enable Elite mode, No ARRRROWWS!!!!
" vnoremap <Down> <NOP>            " Enable Elite mode, No ARRRROWWS!!!!
" noremap <Left> <NOP>            " Enable Elite mode, No ARRRROWWS!!!!
" inoremap <Left> <NOP>            " Enable Elite mode, No ARRRROWWS!!!!
" vnoremap <Left> <NOP>            " Enable Elite mode, No ARRRROWWS!!!!
" noremap <Right> <NOP>           " Enable Elite mode, No ARRRROWWS!!!!
" inoremap <Right> <NOP>           " Enable Elite mode, No ARRRROWWS!!!!
" vnoremap <Right> <NOP>           " Enable Elite mode, No ARRRROWWS!!!!

" Shift + arrow keys selects text
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>

set undolevels=1000             " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour
set mouse=a                     " activate mouse

set clipboard=unnamed
map <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>
set pastetoggle=<F10>
inoremap <C-v> <F10><C-r>+<F10>

" Startup

function! StartUp()
if 0 == argc()
  NERDTree
end
endfunction

autocmd VimEnter * call StartUp()
