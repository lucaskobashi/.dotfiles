syntax on
set nu

set ts=4 sw=4 expandtab smarttab
set smartindent
set noswapfile
set incsearch

set colorcolumn=80

" PLUG 
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-utils/vim-man'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme gruvbox
set background=dark

let g:gruvbox_contrast_dark="hard"

" Allows transparent background to gruvbox
highlight Normal ctermbg=None
