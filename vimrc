autocmd vimenter * colorscheme gruvbox
set background=dark
set nocompatible
set mouse=a
set ttymouse=sgr

" show if leader or other key pressed
set showcmd

" allow project specific config
set exrc
set secure

syntax enable

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set noexpandtab
set list
set listchars=tab:>-

" higlight searches
set hlsearch

" highlight dynamically as pattern typed
set incsearch 

nnoremap <leader>ad :ALEDetail<CR>

let g:ale_set_highlights = 1
let g:ale_completion_enabled = 1
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'graphql': ['prettier'],
\   'html': ['prettier'],
\   'javascript': ['eslint', 'prettier'],
\   'javascriptreact': ['eslint', 'prettier'],
\   'json': ['prettier'],
\   'css': ['stylelint'],
\   'less': ['prettier'],
\   'scss': ['prettier'],
\   'typescript': ['eslint', 'prettier'],
\   'typescriptreact': ['eslint', 'prettier'],
\}
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'tslint'],
\   'css': ['stylelint']
\}
let g:ale_javascript_prettier_options = '--single-quote --print-width 100 --use-tabs'


highlight link ALEWarningSign String
highlight link ALEErrorSign Title

" linters

" FZF
set rtp+=/usr/local/opt/fzf

" FZF key bindings
nnoremap <C-f> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-v': 'vsplit' }

" load plugins
packloadall
" load helptags
silent! helptags ALL
