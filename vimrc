let s:darwin = has('mac')

set nocompatible

call plug#begin()

  Plug 'ConradIrwin/vim-bracketed-paste'
  Plug 'Glench/Vim-Jinja2-Syntax'
  Plug 'airblade/vim-gitgutter'
  Plug 'bling/vim-airline'
  Plug 'fholgado/minibufexpl.vim'
  Plug 'junegunn/goyo.vim',      {'on': 'Goyo'}
  Plug 'junegunn/limelight.vim', {'on':  'Limelight'}
  Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'junegunn/seoul256.vim'
  Plug 'kchmck/vim-coffee-script'
  Plug 'navicore/vissort.vim'
  Plug 'nginx.vim'
  Plug 'pearofducks/ansible-vim'
  Plug 'rooprob/vim-behave'
  Plug 'schlueter/ruby.vim'
  Plug 'schlueter/zsh-ft.vim'
  Plug 'scrooloose/syntastic'
  Plug 'suan/vim-instant-markdown'
  Plug 'tmux-plugins/vim-tmux'
  Plug 'tpope/vim-commentary', {'on': '<Plug>Commentary'}
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-git'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-tbone'
  Plug 'valloric/YouCompleteMe'
  Plug 'vim-scripts/ReplaceWithRegister'
  Plug 'vim-scripts/bats.vim'
  Plug 'vimperator/vimperator.vim'

  if s:darwin
    Plug 'zerowidth/vim-copy-as-rtf', {'on': 'CopyRTF'}
    Plug 'junegunn/vim-xmark'
  endif

  if v:version >= 703
    Plug 'junegunn/vim-after-object'
  endif

call plug#end()

filetype plugin on
filetype plugin indent on

set laststatus=2
set wrap linebreak nolist
set visualbell noerrorbells
set history=1000 undolevels=1000
set hidden
set hlsearch incsearch showmatch
set backupdir=~/.vim/backup
set pastetoggle=<F3>
set clipboard=unnamedplus

"Set command and input cursors
let tmux_test = system('[[ -z $TMUX ]]')
if v:shell_error
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
endif

" Easy window handling
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-s> <C-w>s

" Diff of current state and current saved state
map <F2> :w !diff '%' -<CR>

" Sudo save
cmap w!! w !sudo tee % >/dev/null

",/ turns off search highlighting
nmap <silent> ,/ :nohlsearch<CR>

" Search for word under cursor
vnoremap // y/<C-R>"<CR>

" Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Always change working dir to current file dir
"autocmd BufEnter * silent! lcd %:p:h

" mouse
silent! set ttymouse=xterm2
set mouse=a

" 80 chars/line
set textwidth=0
if exists('&colorcolumn')
  set colorcolumn=80
endif

" Spaces, not tabs
set expandtab tabstop=2 shiftwidth=2

" Make modelines work
set modelines=10

" Display Whitespace
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,nbsp:%

" MiniBufExplorer shortcuts
nnoremap <Leader>q :MBEToggle<CR>

" Shortcut buffer switching to # \ where # in 1..99
let c = 1
while c <= 99
  execute "nnoremap " . c . "<Leader> :" . c . "b\<CR>"
  let c += 1
endwhile

" Some buffer switching shortcuts
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>n :bn<CR>

" Spell checking TODO toggle
nnoremap <Leader>s :setlocal spell spelllang=en_us<CR>
nnoremap <Leader>S :set nospell<CR>

""""""""
" Theme
""""""""
syntax enable
set background=dark
try
  colo seoul256
catch
endtry


""""""""""""""""
" Airline Theme
""""""""""""""""
let g:airline_inactive_collapse=1
let g:airline_powerline_fonts=1
let g:airline_exclude_filenames = ['MiniBufExplorer']


"""""""""""""""""""""
" Limelight and Goyo
"""""""""""""""""""""
let g:limelight_conceal_ctermfg = 240
let g:goyo_width = 97

nnoremap <Leader>ll :Limelight!!<CR>

function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
  MBEClose
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=5
  highlight StatusLineNC ctermbg=none
  highlight StatusLine   ctermbg=none
  highlight VertSplit    ctermbg=none
  highlight NonText      ctermbg=none
  highlight Normal       ctermbg=none
  MBEOpen
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()


""""""""""""
" Syntastic
""""""""""""
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Linter Customizations
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_flake8_args = "--ignore=E402,F403,E501,E302,F811"

" This has to be after something or it gets overridden
" Let background transparency work
highlight StatusLineNC ctermbg=none
highlight StatusLine ctermbg=none
highlight VertSplit ctermbg=none
highlight NonText ctermbg=none
highlight Normal ctermbg=none

""""""""
" Netrw
""""""""
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 1
let g:netrw_winsize = 25

""""""""""""""""""""""""""""
" Embedded Alternate Syntax
""""""""""""""""""""""""""""
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
