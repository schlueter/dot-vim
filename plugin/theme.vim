syntax enable
set background=dark
colorscheme badwolf

let g:default_colorscheme = 'seoul256'
let g:python_colorscheme = 'seoul256'

try
    execute "colorscheme " . g:default_colorscheme
catch
    colorscheme delek
endtry
