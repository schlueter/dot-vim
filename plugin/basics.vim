" Set clipboard for integration to system clipboard
set clipboard=unnamed

" Handle tabs
set expandtab tabstop=4 shiftwidth=4

" Allow non visible buffers to be modified
set hidden

" Command line history
set history=1000

" Search behaviour
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

" Remove trailing whitespace from all lines on save
autocmd BufWritePre * :%s/\s\+$//e

" Search for selected text with //
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Enable sytax highlighting within ``` blocks in markdown
let g:markdown_fenced_languages = ['html', 'python', 'ruby', 'vim', 'sh']
