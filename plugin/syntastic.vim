" Syntastic
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" Linter Customizations
let g:syntastic_sh_shellcheck_args = "-x"
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_python_pylint_args='-f parseable -r n'
let g:syntastic_python_flake8_args = "--ignore=E402,F403,E501,E302,F811"
let g:syntastic_python_pyflakes_args = "--ignore=E402,F403,E501,E302,F811"
