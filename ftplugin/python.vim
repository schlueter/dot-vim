function s:OnBufEnter()
    if (exists("g:python_colorscheme"))
        execute "colorscheme " . g:python_colorscheme
    endif
endfunction

function s:OnBufLeave()
    if (exists("g:default_colorscheme"))
        execute "colorscheme " . g:default_colorscheme
    endif
endfunction

au BufEnter * call s:OnBufEnter()
au BufLeave * call s:OnBufLeave()
