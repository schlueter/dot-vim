function OnBufEnter()
    if (exists("g:python_colorscheme"))
        execute "colorscheme " . g:python_colorscheme
    endif
endfunction

function OnBufLeave()
    if (exists("g:default_colorscheme"))
        execute "colorscheme " . g:default_colorscheme
    endif
endfunction

au BufEnter * call OnBufEnter()
au BufLeave * call OnBufLeave()
