set nocompatible

" Specify a dir for plugin
" - Avoid using stand Vim dir names like 'plugin'
call plug#begin('~/.vim/plugged')

" Git wrapper
Plug 'tpope/vim-fugitive'

" fuzzy search 
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" add, delete replace sandwiched textr
Plug 'machakann/vim-sandwich'

" Make sure you use single quotes
Plug 'dense-analysis/ale'

" Add gruvbox theme
Plug 'morhetz/gruvbox'

" Emmet for HTML
Plug 'mattn/emmet-vim'

" Javascript syntax highlighting
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'Shougo/vimproc.vim'

" Initialize plugin system
call plug#end()

" Status line
set laststatus=2
set statusline=
" git
set statusline+=%#PmenuSel#
set statusline+=%{FugitiveHead()}
set statusline+=%#LineNr#
" filepath
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
" filetype
set statusline+=\ %y
" status line current line of total
set statusline+=\ %l:%c

" Turn on syntax highlighting
syntax on

" set theme
colorscheme gruvbox
set background=dark

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

" Do not show line numbers in margin
set nonumber

