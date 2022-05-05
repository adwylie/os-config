" Set the leader.
let mapleader = ","


" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()


" vim-colors-solarized
syntax enable
set background=dark
colorscheme solarized


" vim-airline customization
set laststatus=2
set t_Co=256
set encoding=utf-8
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#branch#emptymessage=''
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=0
let g:airline_theme='solarized'

" switch ordering of branch and hunks indicator
function! AirlineInit()
  let g:airline_section_b = airline#section#create(['branch', ' ', 'hunks'])
endfunction
autocmd VimEnter * call AirlineInit()


" vim-gitgutter customization
set signcolumn=yes
au colorscheme * highlight SignColumn ctermbg=256


" Separate tabbing widths for specific languages
filetype plugin indent on

let g:clipbrdDefaultReg = '+'


" When searching move cursor to the next/previous match
map N Nzz
map n nzz


" Up/down on wrapping lines will move visually instead of logically
no j gj
no k gk


" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


set completeopt-=preview       " Don't show extra info in preview window
set backspace=indent,eol,start " Allow backspace to work
"set lines=45 columns=87        " Set size of vim window
set showcmd                    " Show (partial) command on last line
set grepprg=grep\ -nH\ $*      " Use grep for grep command..
set autoindent                 " Copy indent from current line for a new line
set expandtab                  " (Insert mode) use spaces for tabs
set smarttab                   " <tab> in front of a line will use shiftwidth
set tabstop=2                  " Number of spaces that <tab> counts for
set shiftwidth=2               " Number of spaces for each (auto)indent
set softtabstop=2              " Number of spaces to replace tabs by
set number                     " Show line numbers
set ignorecase                 " Ignore case when searching
set smartcase                  " Override ignorecase; Caps. matched in search
set incsearch                  " Incremental searching
set hlsearch                   " Highlight (previous) searches
set hidden                     " Hide buffer instead of abandoning (no saving)
set wildmenu                   " Enhanced command-line completion
set wrapscan                   " Searches wrap around end of file
set nostartofline              " Keep cursor at same column for some commands
set ruler                      " Show line and column of cursor position
set wrap                       " Wrap lines longer than width of the window
set linebreak                  " Wrap lines at specific characters (see brk)
set foldmethod=syntax          " Allow folding based on language syntax
set foldlevelstart=99          " Stop from auto-folding when opening files
set tw=79                      " Set the text width for line wrapping (gq)
set splitbelow                 " Split a new window below the current one
set splitright                 " Split a new window right of the current one

syntax on


" Set a vertical rule if possible
if exists('+colorcolumn')
  set colorcolumn=79
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>79v.\+', -1)
endif

" If editing the crontab..
if $VIM_CRONTAB == "true"
  set nobackup
  set nowritebackup
endif
