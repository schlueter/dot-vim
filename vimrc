let s:darwin = has('mac')

set nocompatible

call plug#begin()

  Plug 'junegunn/seoul256.vim'

  Plug 'johngrib/vim-game-code-break'

  Plug 'airblade/vim-gitgutter'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  Plug 'junegunn/goyo.vim',      {'on': 'Goyo'}
  Plug 'junegunn/limelight.vim', {'on':  'Limelight'}

  Plug 'AnsiEsc.vim'

  Plug 'ConradIrwin/vim-bracketed-paste'

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

  Plug 'valloric/YouCompleteMe'

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

  if v:version >= 703
    "Plug 'junegunn/vim-after-object'
  endif

call plug#end()

filetype plugin on
filetype plugin indent on

set laststatus=2
set wrap linebreak
set visualbell noerrorbells
set history=1000 undolevels=1000
set hidden
set hlsearch incsearch showmatch
set nobackup noswapfile
set pastetoggle=<F3>
set clipboard=unnamed
set expandtab tabstop=2 shiftwidth=2
set modelines=10
set list listchars=tab:>-,trail:~,extends:>,precedes:<,nbsp:%
"set ttymouse=xterm2 mouse=a

highlight CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
highlight CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

autocmd BufWritePre * :%s/\s\+$//e

map <F2> :w !diff '%' -<CR>
map <F4> :setlocal spell! spelllang=en_us<CR>
map <F5> :SyntasticCheck<CR>

cmap w!! w !sudo tee % >/dev/null
nmap ,/ :nohlsearch<CR>

" Shortcut buffer switching to # \ where # in 1..99
let c = 1
while c <= 99
  execute "nnoremap " . c . "<Leader> :" . c . "b\<CR>"
  let c += 1
endwhile

" Theme
syntax enable
set background=dark
try
  colo seoul256
catch
endtry

" Airline Theme
let g:airline_inactive_collapse=1
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'

" Limelight
let g:limelight_conceal_ctermfg = 240
let g:goyo_width = 97

nnoremap <Leader>ll :Limelight!!<CR>

" Goyo
function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
endfunction

function! s:goyo_leave()
  highlight StatusLineNC ctermbg=none
  highlight StatusLine   ctermbg=none
  highlight VertSplit    ctermbg=none
  highlight NonText      ctermbg=none
  highlight Normal       ctermbg=none
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=5
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Syntastic
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" Linter Customizations
let g:syntastic_sh_shellcheck_args = "-x"
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_python_pylint_args='-f parseable -r n'
let g:syntastic_python_flake8_args = "--ignore=E402,F403,E501,E302,F811"
let g:syntastic_python_pyflakes_args = "--ignore=E402,F403,E501,E302,F811"

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 1
let g:netrw_winsize = 25

function! TextEnableCodeSnip(filetype,start,end,textSnipHl) abort
  let ft=toupper(a:filetype)
  let group='textGroup'.ft
  if exists('b:current_syntax')
    let s:current_syntax=b:current_syntax
    " Remove current syntax definition, as some syntax files (e.g. cpp.vim)
    " do nothing if b:current_syntax is defined.
    unlet b:current_syntax
  endif
  execute 'syntax include @'.group.' syntax/'.a:filetype.'.vim'
  try
    execute 'syntax include @'.group.' after/syntax/'.a:filetype.'.vim'
  catch
  endtry
  if exists('s:current_syntax')
    let b:current_syntax=s:current_syntax
  else
    unlet b:current_syntax
  endif
  execute 'syntax region textSnip'.ft.'
  \ matchgroup='.a:textSnipHl.'
  \ start="'.a:start.'" end="'.a:end.'"
  \ contains=@'.group
endfunction

" YCM
let g:ycm_server_python_interpreter = $HOME . '/.vim/venv/bin/python'

" This has to be after something or it gets overridden
" Let background transparency work
highlight StatusLineNC ctermbg=none
highlight StatusLine ctermbg=none
highlight VertSplit ctermbg=none
highlight NonText ctermbg=none
highlight Normal ctermbg=none
