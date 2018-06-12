call plug#begin()

  " colorscheme plugins
  Plug 'bluz71/vim-moonfly-colors'
  Plug 'sjl/badwolf'
  Plug 'altercation/vim-colors-solarized'

  " Others
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  Plug 'junegunn/goyo.vim',      {'on': 'Goyo'}
  Plug 'junegunn/limelight.vim', {'on':  'Limelight'}

  Plug 'AnsiEsc.vim'


  Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'navicore/vissort.vim'

  Plug 'Glench/Vim-Jinja2-Syntax'
  Plug 'kchmck/vim-coffee-script'
  Plug 'nginx.vim'
  Plug 'pearofducks/ansible-vim'
  Plug 'rooprob/vim-behave'
  Plug 'schlueter/ruby.vim'
  Plug 'schlueter/zsh-ft.vim'
  Plug 'suan/vim-instant-markdown'
  Plug 'vim-scripts/bats.vim'
  Plug 'vimperator/vimperator.vim'

  Plug 'scrooloose/syntastic'

  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-git'

  Plug 'tmux-plugins/vim-tmux'

  Plug 'valloric/YouCompleteMe', { 'do': './install.py' }

  Plug 'tpope/vim-commentary', {'on': '<Plug>Commentary'}
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-tbone'
  Plug 'vim-scripts/ReplaceWithRegister'

  Plug 'hsanson/vim-android'
  Plug 'eagletmt/neco-ghc'
  Plug 'eagletmt/ghcmod-vim'
  Plug 'Shougo/vimproc.vim'

call plug#end()

filetype plugin indent on
