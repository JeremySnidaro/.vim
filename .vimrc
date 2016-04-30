set nocompatible
filetype off


"START--Display
set title

set ruler " Show the line and column number of the cursor position.
set wrap " When on, lines longer than the width of the window will wrap and
         " displaying continues on the next line.
set relativenumber " Show the line number relative to the line 
                   " with the cursor in front of each line.
let loaded_matchparen = 1 " Stop matching parenthese and bracket.
set scrolloff=999 " Minimal number of screen lines to keep
                  " above and below the cursor.


" Draw a line to see 79 limit ( GNU standard formatting )
let &colorcolumn=join(range(80,999),",")
let &colorcolumn="79,".join(range(400,999),",")
"END--Display 

"START--Color
colorscheme molokai " https://github.com/tomasr/molokai 
syntax enable
let g:molokai_origin=0 " To change color of molokai set it to 0 or 1
set t_Co=256 " Number of colors
set background=light " To make the colorscheme work well over ssh
"END--Color

"START--Plugin-management

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'       " required

Plugin 'octol/vim-cpp-enhanced-highlight' " To enable syntax highlighting
" on function in class and stl like string cout..

Plugin 'Valloric/YouCompleteMe'

Plugin 'tomtom/viki_vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"END--Plugin-management 

"START--Searching

set ignorecase " The case of normal letters is ignored.
set incsearch " While typing a search command
              " show the current pattern found.

"END--Searching

"START--TAB-Config
set tabstop=4 " Number of spaces that a <Tab> in the file counts for. 
set softtabstop=4 " Number of spaces that a <Tab> counts for
                  " while performing editing operations.
set shiftwidth=4 " Number of saces that a reindent operations do(<< and >>). 
set expandtab " Convert tab to space.
" To convert all existing tab to space run the following command :
" :set et|retab

"END--TAB-Config

set backspace=indent,eol,start " Normal use of backspace in insert mode.
set autoindent " Copy indent from current line when starting a new line. 
set smartindent " Do smart autoindenting when starting a new line. 
set showmode " If in Insert, Replace or Visual mode 
             " put a message on the last line with the name of the mode.
set showcmd " Show (partial) command in the last line of the screen. 

"START--Remap

" nnoremap only works in normal mode.
nnoremap <space> za
" When on a closed fold: open it and vice versa. 
" To enable flod use :set foldmethod=indent

"END--Remap

"START--Autocmd " List of command execute while vim maching file.

" To open the help for the word under the cursor while pressing 'K'.
autocmd FileType vim setlocal keywordprg=:help

"END--Autocmd 


"START--Custom-Command

command Main :r ~/.vim/command/command_main_cpp.txt

"END--Custom-Command
