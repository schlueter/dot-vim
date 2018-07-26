call plug#begin()

  " colorscheme plugins
  Plug 'bluz71/vim-moonfly-colors'
  Plug 'sjl/badwolf'
  Plug 'altercation/vim-colors-solarized'
  Plug 'junegunn/seoul256.vim'

  " Language plugins
  Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
  Plug 'eagletmt/neco-ghc'
  Plug 'eagletmt/ghcmod-vim'
  Plug 'Glench/Vim-Jinja2-Syntax'
  Plug 'kchmck/vim-coffee-script'
  Plug 'ekalinin/Dockerfile.vim'

  " Workflow plugins
  Plug 'airblade/vim-gitgutter'

  " Vim experience plugins
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'junegunn/goyo.vim', {'on': 'Goyo'}
  Plug 'junegunn/limelight.vim', {'on':  'Limelight'}
  Plug 'valloric/YouCompleteMe'
  Plug 'AnsiEsc.vim'
  Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'scrooloose/syntastic'

  Plug 'nginx.vim'
  Plug 'pearofducks/ansible-vim'
  Plug 'rooprob/vim-behave'
  Plug 'schlueter/ruby.vim'
  Plug 'schlueter/zsh-ft.vim'
  " TODO requires `npm -g install instant-markdown-d`
  Plug 'suan/vim-instant-markdown'
  Plug 'vim-scripts/bats.vim'
  Plug 'vimperator/vimperator.vim'


  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-git'

  Plug 'tmux-plugins/vim-tmux'


  Plug 'tpope/vim-commentary', {'on': '<Plug>Commentary'}
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-tbone'
  Plug 'vim-scripts/ReplaceWithRegister'

  Plug 'hsanson/vim-android'
  Plug 'Shougo/vimproc.vim'

call plug#end()

filetype plugin indent on
