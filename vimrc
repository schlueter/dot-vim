call plug#begin()
  " Testing
  Plug 'rickhowe/diffchar.vim'
  Plug 'pedrohdz/vim-yaml-folds'

  " Colorscheme
  Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

  " Language plugins
  Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
  Plug 'Glench/Vim-Jinja2-Syntax'
  Plug 'dense-analysis/ale'
  Plug 'ekalinin/Dockerfile.vim'
  Plug 'smerrill/vcl-vim-plugin'
  Plug 'martinda/Jenkinsfile-vim-syntax'
  Plug 'bitc/vim-hdevtools'
  Plug 'vim-python/python-syntax'
  "Plug 'mrk21/yaml-vim'
  "Plug 'stephpy/vim-yaml' "
  Plug 'rodjek/vim-puppet'
  Plug 'hashivim/vim-terraform'

  " Vim experience plugins
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'junegunn/goyo.vim', {'on': 'Goyo'}
  Plug 'junegunn/limelight.vim', {'on':  'Limelight'}
  Plug 'vim-scripts/AnsiEsc.vim'
  Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'junegunn/vim-peekaboo'
  Plug 'ap/vim-css-color'
  Plug 'blueyed/vim-diminactive'

  Plug 'vim-scripts/nginx.vim'
  "Plug 'pearofducks/ansible-vim'
  Plug 'schlueter/ansible-vim'
  Plug 'schlueter/ruby.vim'
  Plug 'schlueter/zsh-ft.vim'
  Plug 'suan/vim-instant-markdown', {'do': 'npm -g install instant-markdown-d'}
  Plug 'vim-scripts/bats.vim'
  Plug 'vimperator/vimperator.vim'

  " Workflow plugins
  Plug 'airblade/vim-gitgutter'
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
