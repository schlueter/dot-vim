syntax enable
set background=dark

let g:default_colorscheme = 'habamax'

try
    execute "colorscheme " . g:default_colorscheme
catch
    colorscheme delek
endtry

highlight CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
highlight CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
highlight Search       cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
highlight Visual       cterm=NONE ctermbg=red     ctermfg=white guibg=darkred guifg=white
