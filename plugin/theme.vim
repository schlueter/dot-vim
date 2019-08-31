syntax enable
set background=dark

let g:default_colorscheme = 'seoul256'
let g:python_colorscheme = 'seoul256'

try
    execute "colorscheme " . g:default_colorscheme
catch
    colorscheme delek
endtry

highlight CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
highlight CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
