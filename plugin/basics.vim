" Set clipboard for integration to system clipboard
set clipboard=unnamed
" Handle tabs
set expandtab tabstop=4 shiftwidth=4
" Allow non visible buffers to be modified
set hidden
" Command line history
set history=1000

set hlsearch incsearch showmatch
set laststatus=2
set mouse=a
set nolist listchars=tab:>-,trail:~,extends:>,precedes:<,nbsp:%
set nobackup noswapfile
set pastetoggle=<F3>
set undolevels=1000
set visualbell errorbells

" Long line handling
set wrap linebreak breakindent breakindentopt=shift:1
let &showbreak = '⏎  '

" Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e
