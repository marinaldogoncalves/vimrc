" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/local/share/vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'altercation/vim-colors-solarized'

call plug#end()

syntax on
set autoindent
set smartindent
set history=1000
set cursorline
set mouse=a
set clipboard=unnamedplus
set tabstop=2 softtabstop=2 expandtab shiftwidth=2
set foldmethod=syntax
set foldlevel=99
nnoremap <space> za
set wrap
set number
set wildmenu

" status bar
set laststatus=2

let g:identLine_enabled = 1
map <c-k>i :IndentLinesToggle<cr>

set encoding=utf8
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
