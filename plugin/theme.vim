syntax enable
set background=dark
colorscheme badwolf

let g:default_colorscheme = 'moonfly'
let g:python_colorscheme = 'badwolf'

try
    execute "colorscheme " . g:default_colorscheme
catch
    colorscheme delek
endtry
