set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'koron/nyancat-vim.git'
Bundle 'hallison/vim-ruby-sinatra'
Bundle 'sjl/badwolf'
Bundle 'wting/rust.vim'

so ~/.vim/plugin/javascript.vim
so ~/.vim/syntax/coffee.vim
so ~/.vim/indent/coffee.vim
"syntax and color scheme
colorscheme badwolf
syntax on

"default tabs
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2

"file conditionals
au BufNewFile,BufRead *.py set filetype=python
  "because I'm stupid sometimes...
au BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

au BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufRead *.rake set filetype=ruby
au BufNewFile,BufRead *.god set filetype=ruby
au BufNewFile,BufRead *.rb set filetype=ruby
au BufNewFile,BufRead Gemfile set filetype=ruby
au BufNewFile,BufRead *.haml set filetype=ruby

au BufNewFile,BufRead *.rs set filetype=rust
au BufNewFile,BufRead *.rs set softtabstop=4
au BufNewFile,BufRead *.rs set shiftwidth=4
au BufNewFile,BufRead *.rc set softtabstop=4
au BufNewFile,BufRead *.rc set shiftwidth=4
au BufNewFile,BufRead Makefile set softtabstop=4
au BufNewFile,BufRead Makefile set shiftwidth=4


" OPTIONAL: This enables automatic indentation as you type.
filetype indent on
filetype plugin indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
autocmd Filetype gitcommit setlocal spell textwidth=72
set ruler

"Fixes backspace issue
set backspace=indent,eol,start
