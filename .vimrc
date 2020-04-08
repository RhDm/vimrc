" set nocompatible              " required
" filetype off                  " required

" set noerrorbells
" set tabstop=4 softtabstop=4
" set shiftwidh=4
" set expandtab

" base:
filetype plugin on
syntax on
set encoding=utf-8
set smartindent
set number relativenumber

" autocompletion:
set wildmode=longest,list,full

set t_Co=256

" Enable CursorLine
set cursorline
hi CursorLine ctermbg=None term=bold cterm=bold guibg=Grey40
" default highlight
" hi CursorLine ctermbg=DarkBlue
" when in input mode
" autocmd InsertEnter * hi CursorLine ctermbg=None term=bold cterm=bold guibg=Grey40
" when back in default mode
" autocmd InsertLeave * hi CursorLine ctermbg=DarkBlue

" status line when in insert mode
" au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta guibg=Red

set statusline+=%F
set ruler
set incsearch
set mouse=a

" open new split in
set splitbelow splitright
" delete tailing spaces
autocmd BufWritePre * %s/\s\+$//e

set colorcolumn=100
highlight ColorColumn ctermbg=238  guibg=lightgrayi



map <C-n> :NERDTreeToggle<CR>
map <F5> :UndotreeToggle<CR>

call plug#begin('~/.vim/plugged')
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='angr'
















