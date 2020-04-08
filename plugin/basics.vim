" Set clipboard for integration to system clipboard
set clipboard=unnamed
" Handle tabs
set expandtab tabstop=4 shiftwidth=4
" Allow non visible buffers to be modified
set hidden
" Command line history
set history=1000

set hlsearch
set incsearch
set showmatch
set laststatus=2
set mouse=a
set nolist listchars=tab:>-,trail:~,extends:>,precedes:<,nbsp:%
set nobackup noswapfile
set pastetoggle=<F3>
set undolevels=1000
set mouse=a

set visualbell errorbells
set wrap
set linebreak
set breakindent
set breakindentopt=shift:1
let &showbreak = '⏎  '

autocmd BufWritePre * :%s/\s\+$//e
