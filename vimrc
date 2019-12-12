" Specify a dir for plugins
" - Avoid using stand Vim dir names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'dense-analysis/ale'

" Add gruvbox theme
Plug 'morhetz/gruvbox'

" Emmet for HTML
Plug 'mattn/emmet-vim'

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'Shougo/vimproc.vim'

" Initialize plugin system
call plug#end()

" set theme
colorscheme gruvbox
set background=dark

" Ctrl-P
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" eg. run prettier on save
let g:ale_fix_on_save = 1

" Tabs to spaces
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" on pressing tab, insert 2 spaces
set expandtab

" Show line numbers in margin
set number
