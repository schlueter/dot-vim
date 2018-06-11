" Enable indent and regular plugins based on filetype
filetype plugin indent on

set laststatus=2
set wrap linebreak
set visualbell noerrorbells
set history=1000
set undolevels=1000
set hidden
set hlsearch incsearch showmatch
set nobackup noswapfile
set pastetoggle=<F3>
set clipboard=unnamed
set expandtab tabstop=2 shiftwidth=2
set modelines=10
" Display whitespace characters
set list listchars=tab:>-,trail:~,extends:>,precedes:<,nbsp:%

highlight CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
highlight CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

noremap <Leader>c :set cursorline! cursorcolumn!<CR>
noremap <F2> :w !diff '%' -<CR>
noremap <F4> :setlocal spell! spelllang=en_us<CR>
noremap <F5> :SyntasticCheck<CR>
noremap ,/ :nohlsearch<CR>
cnoremap w!! w !sudo tee % >/dev/null


autocmd BufWritePre * :%s/\s\+$//e
