" Tab as 4 spaces
set expandtab
set tabstop=4
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

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'wikitopian/hardmode'
Plug 'scrooloose/nerdtree'
Plug 'fidian/hexmode'
call plug#end()

colorscheme gruvbox
set background=dark
