colorscheme gruvbox "awesome colorscheme

syntax enable       "enable syntax processing

set tabstop=2       " number of visual spaces per TAB

set softtabstop=2   " number of spaces in tab when editing

set expandtab       "tabs are spaces

set number          " show line number

set cursorline      " highlight current line

filetype indent on  " load filetype-specific indent files

set wildmenu        " visual autocomplete for command menu

set lazyredraw      " redraw only when we need to

set showmatch       " highlight matching [{()}]

set incsearch       " search as characters are entered

set hlsearch        " hightlight matches

" turn off search hightlight
nnoremap <leader><space> :nohlsearch<CR>

set foldenable      " enable folding

set foldlevelstart=10  " open most folds by deafault

set foldnestmax=10      " 10 nested fold max

" space open/closes folds
nnoremap <space> za

set foldmethod=indent   " fold based on indent leve

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]

let mapleader=","       " leader is comman

" edit vimrc/szshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $VIMRC<CR>

" save session
nnoremap <leader>s :mksession<CR>

" open ag.vim
nnoremap <leader>a :Ag


" vundle {{{1
"
" " needed to run vundle (but i want this anyways)
set nocompatible
"
" " vundle needs filtype plugins off
" " i turn it on later
filetype plugin indent off
syntax off
"
" " set the runtime path for vundle
set rtp+=~/.vim/bundle/Vundle.vim
"
" " start vundle environment
call vundle#rc()
"
" " list of plugins {{{2
" " let Vundle manage Vundle (this is required)
" "old: Plugin 'gmarik/Vundle.vim'
Plugin 'VundleVim/Vundle.vim'
"
" " to install a plugin add it here and run :PluginInstall.
" " to update the plugins run :PluginInstall! or :PluginUpdate
" " to delete a plugin remove it here and run :PluginClean
"
" YOUR LIST OF PLUGINS GOES HERE LIKE THIS:
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'morhetz/gruvbox'
Plugin 'jiangmiao/auto-pairs'
" " add plugins before this
 call vundle#end()
"
" " now (after vundle finished) it is save to turn filetype plugins on
filetype plugin indent on
syntax on

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

