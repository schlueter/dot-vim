function utility#shebang_contains(contents)
    if getline(1) =~ '^#!.*\<' . a:contents . '\>'
        echo 'found ' . a:contents . ' in shebang'
        return 1
    endif
endfunction

function utility#set_ft_from_shebang(shebang_contents, ft)
    if utility#shebang_contains(a:shebang_contents)
        set ft=a:ft
    endif
endfunction
