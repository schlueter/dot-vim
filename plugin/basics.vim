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
set list listchars=tab:>-,trail:~,extends:>,precedes:<,nbsp:%
set nobackup noswapfile
set pastetoggle=<F3>
set undolevels=1000

"set visualbell noerrorbells
set wrap
set linebreak
set breakindent
set breakindentopt=shift:1
let &showbreak = '⏎  '

highlight CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
highlight CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

noremap <C-n> :bn<CR>
noremap <C-p> :bp<CR>
noremap <Leader>c :set cursorline! cursorcolumn!<CR>
noremap <F2> :w !diff '%' -<CR>
" F4 to toggle spellcheck
noremap <F4> :setlocal spell! spelllang=en_us<CR>
noremap <F5> :SyntasticCheck<CR>
noremap <Leader>, :nohlsearch<CR>
cnoremap w!! w !sudo tee % >/dev/null

autocmd BufWritePre * :%s/\s\+$//e
