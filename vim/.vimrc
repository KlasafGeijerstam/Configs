" Tab as 4 spaces
set expandtab
set tabstop=4
set shiftwidth=4
"set cc=60
"match ErrorMsg '\%>80v.\+'
" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>
"line numbers
set number
set hlsearch

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()


let g:ycm_server_python_interpreter='/usr/local/bin/python'
let mapleader=","

nnoremap <leader>u :noh<CR>
nnoremap <leader>t :NERDTreeToggle<CR>


Plug 'morhetz/gruvbox'
Plug 'cseelus/vim-colors-lucid'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'wikitopian/hardmode'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'fidian/hexmode'
Plug 'valloric/youcompleteme'
call plug#end()
filetype plugin on
colorscheme gruvbox
set background=dark
