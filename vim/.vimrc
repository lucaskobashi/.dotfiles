" #== set ==#

set background=dark
set nocompatible
set t_Co=256
set number
set tabstop=4
set shiftwidth=4
set smartindent
set autoindent
set cursorline
set noswapfile
set incsearch
set colorcolumn=80
set ruler
set noshowmode
set showtabline=2
set nobackup
set nowritebackup
" set clipboard=unnamedplus

filetype plugin indent on
syntax on

" #== plug ==#

" automatic plug installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'vim-utils/vim-man'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'

call plug#end()

" #== lightline ==#
"
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'filetype' ] ]
      \ },
      \ }

" #== onedark ==#

" remove background
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white })
  augroup END
endif

let g:onedark_color_overrides = {
\ "red": {"gui": "#cc241d", "cterm": "167", "cterm16": "1" },
\ "yellow": {"gui": "#ffd75f", "cterm": "221", "cterm16": "3" },
\ "blue": {"gui": "#5fafd7", "cterm": "74", "cterm16": "4" },
\ "purple": {"gui": "#875f87", "cterm": "96", "cterm16": "5" },
\ "green": {"gui": "#875f87", "cterm": "149", "cterm16": "5" },
\}

colorscheme onedark

" #== nerdtree ==#

nmap <C-t> :NERDTreeToggle<CR>
let g:NERDTreeShowHidden=1

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" auto syntax for mips
autocmd BufNewFile,BufRead *.s set syntax=mips
autocmd BufNewFile,BufRead *.asm set syntax=mips

