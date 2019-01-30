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

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()


let g:ycm_server_python_interpreter='/usr/local/bin/python'
let g:airline#extensions#tabline#enabled = 1
let mapleader=","

nnoremap <leader>u :noh<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap L $
nnoremap H 0


Plug 'morhetz/gruvbox'
Plug 'cseelus/vim-colors-lucid'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
"Plug 'powerline/powerline'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'wikitopian/hardmode'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'fidian/hexmode'
Plug 'lervag/vimtex'
Plug 'NLKNguyen/papercolor-theme'
"Plug 'valloric/youcompleteme'
let g:gruvbox_italic=1
Plug 'flazz/vim-colorschemes'
call plug#end()
set signcolumn=yes
filetype plugin on
colorscheme klas " PaperColor klas
set background=dark
"hi clear SignColumn
"hi MatchParen cterm=none ctermbg=green  
