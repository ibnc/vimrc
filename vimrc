set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'koron/nyancat-vim.git'
Plugin 'hallison/vim-ruby-sinatra'
Plugin 'sjl/badwolf'
Plugin 'wting/rust.vim'
Plugin 'kien/ctrlp.vim.git'
Plugin 'mileszs/ack.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'adimit/prolog.vim'
Plugin 'fatih/vim-go'
Plugin 'easymotion/vim-easymotion'
Plugin 'junegunn/goyo.vim'
Plugin 'reedes/vim-pencil'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'jvirtanen/vim-octave'

call vundle#end()

let strip_whitespace_on_save = 1

"syntax and color scheme
colorscheme badwolf
let g:airline_theme='badwolf'
syntax on

"ensure search highlighting is off because I hate it
set nohlsearch

"default tabs
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2

"file conditionals
au BufNewFile,BufRead *.rake set filetype=ruby
au BufNewFile,BufRead *.rb set filetype=ruby
au BufNewFile,BufRead Gemfile set filetype=ruby
au BufNewFile,BufRead *.js.msx set filetype=javascript
au BufNewFile,BufRead *.ts set filetype=javascript
au BufNewFile,BufRead *.tsx set filetype=javascript

au BufNewFile,BufRead *.rs set filetype=rust
au BufNewFile,BufRead *.rs set softtabstop=4
au BufNewFile,BufRead *.rs set shiftwidth=4
au BufNewFile,BufRead *.rc set softtabstop=4
au BufNewFile,BufRead *.rc set shiftwidth=4
au BufNewFile,BufRead Makefile set softtabstop=4
au BufNewFile,BufRead Makefile set shiftwidth=4

au BufNewFile,BufRead *.go set tabstop=4
au BufNewFile,BufRead *.go set shiftwidth=4
au BufNewFile,BufRead *.pl set filetype=prolog

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on
filetype plugin indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
autocmd Filetype gitcommit setlocal spell textwidth=72
set ruler

"Fixes backspace issue
set backspace=indent,eol,start
