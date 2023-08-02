" Set clipboard for integration to system clipboard
set clipboard=unnamed

" Handle tabs
set expandtab tabstop=4 shiftwidth=4

" Allow non visible buffers to be modified
set hidden

" Command line history
set history=999

" Search behaviour
set hlsearch incsearch showmatch

" Keep lines visible around the cursor
set scrolloff=10

set laststatus=2
set mouse=a
set nolist listchars=tab:>-,trail:~,extends:>,precedes:<,nbsp:%
set pastetoggle=<F3>
set undolevels=999
set visualbell errorbells

" File edit backup
set nobackup swapfile
set backupdir=~/.vimtmp/backup//
set directory=~/.vimtmp/swap//
call mkdir(&directory, "p", 0o700)
call mkdir(&backupdir, "p", 0o700)

" Long line handling
set wrap linebreak breakindent breakindentopt=shift:1
let &showbreak = '⏎  '

" Remove trailing whitespace from all lines on save
autocmd BufWritePre * :%s/\s\+$//e

" Search for selected text with //
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Enable sytax highlighting within ``` blocks in markdown
let g:markdown_fenced_languages = ['html', 'python', 'ruby', 'vim', 'sh', 'yaml', 'groovy']
