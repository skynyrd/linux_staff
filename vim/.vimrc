set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'git@github.com:scrooloose/nerdtree.git'
Plugin 'git@github.com:vim-scripts/mru.vim.git'
Plugin 'git@github.com:scrooloose/nerdcommenter.git'
Plugin 'git@github.com:kien/ctrlp.vim.git'
Plugin 'git@github.com:pangloss/vim-javascript.git'
Plugin 'git@github.com:mxw/vim-jsx.git'
Plugin 'git@github.com:scrooloose/syntastic.git'
Plugin 'git@github.com:jistr/vim-nerdtree-tabs.git'
Plugin 'git@github.com:terryma/vim-expand-region.git' "+ to expand, _ to shrink

"For YouCompleteMe, follow these:
"1. cd ~/.vim/bundle/YouCompleteMe/
"2. sudo apt-get install CMake && sudo apt-get install python2.7-dev
"3. ./install.sh --clang-completer

Plugin 'git@github.com:Valloric/YouCompleteMe.git' 
Plugin 'marijnh/tern_for_vim' "Semantic js autocomplete, needs npm install in bundle/tern_for_vim dir

"For Snipmate starts
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger
nmap <C-n> :CtrlP<cr>
nmap <S-l> :NERDTreeTabsFind<cr>
silent! nmap <F10> :NERDTreeTabsToggle<cr>
nmap <F2> :TernRename<cr>
nmap <C-b> :TernDef <cr>

"For Snipmate ends

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

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set hlsearch  "highlight search terms
set incsearch  "search incremental
set tabstop=4	"use 4 spaces when pressing tab
set title "set title of the terminal
set shiftwidth=4 "for me tu use true indentation when gg=G
set nu
set nohlsearch    - use "n" to go next search result

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_autofind=1
let g:nerdtree_tabs_focus_on_files=1

autocmd CompleteDone * pclose "close preview window after description shown.

execute pathogen#infect()
