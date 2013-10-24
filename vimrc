set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails.git'
Bundle 'koron/nyancat-vim.git'
Bundle 'hallison/vim-ruby-sinatra'
Bundle 'sjl/badwolf'
Bundle 'wting/rust.vim'
"Bundle 'justinmk/vim-sneak'

so ~/.vim/plugin/javascript.vim
so ~/.vim/syntax/coffee.vim
so ~/.vim/indent/coffee.vim
colorscheme badwolf
syntax on
au BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufRead *.py set filetype=python
au BufNewFile,BufRead *.rake set filetype=ruby
au BufNewFile,BufRead *.god set filetype=ruby
au BufNewFile,BufRead *.rb set filetype=ruby
au BufNewFile,BufRead Gemfile set filetype=ruby
au BufNewFile,BufRead *.haml set filetype=ruby
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on
filetype plugin indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
autocmd Filetype gitcommit setlocal spell textwidth=72
set ruler
set backspace=indent,eol,start
