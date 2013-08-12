set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle required!
Bundle 'gmarik/vundle'
Bundle 'mileszs/ack.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'nathanaelkane/vim-command-w'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'nanotech/jellybeans.vim'
Bundle 'sjl/vitality.vim'

Bundle 'kana/vim-textobj-user'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-haml'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'walm/jshint.vim'
Bundle 'juvenn/mustache.vim'

Bundle 'tapichu/Align'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tsaleh/vim-matchit'
Bundle 'tpope/vim-endwise'

Bundle 'vim-ruby/vim-ruby'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/Specky'
Bundle 'vim-scripts/VimClojure'
Bundle 'scrooloose/syntastic'

Bundle 'elixir-lang/vim-elixir'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

