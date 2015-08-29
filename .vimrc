set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'luochen1990/rainbow'

"Plugin 'davidhalter/jedi.git'
"Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" " Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
map qq 0i#df

set number
set hlsearch
"set textwidth=79

set foldmethod=indent
set foldlevel=99

nnoremap df <Esc>
onoremap df <Esc>
inoremap df <Esc>`^
inoremap <Leader>df df
map qq 0i#df

map <C-h>m :vertical resize -10<CR>
map <C-h>p :vertical resize +10<CR>
map <C-v>m :resize -10<CR>
map <C-v>p :resize +10<CR>

"nerdtree mapings
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore = ['\.pyc$', '\.swp$']
let NERDTreeShowHidden=1

"let g:ycm_filepath_completion_use_working_dir = 1
"let g:syntastic_enable_signs=1
syntax on
set backspace=indent,eol,start
"search occurrances of word under cursor
map <C-o> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

" grep in set paths for word under cursor C-i or current path C-o
let paths='~/ML/** ~/riderml/**'
map <C-i> :execute "vimgrep /" . expand("<cword>") . "/j " . paths <Bar> cw<CR>
map <C-o> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

hi SpellBad ctermfg=001 ctermbg=015 guifg=#d75f00 guibg=#d75f00
hi SpellCap ctermfg=002 ctermbg=007 guifg=#d75f00 guibg=#d75f00
hi Search cterm=NONE ctermfg=black ctermbg=007

let g:rainbow_active = 1
colorscheme darkblue
