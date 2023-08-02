let g:ale_linters = {'javascript': ['eslint'],'haskell': ['stack-ghc', 'brittany', 'hdevtools'],'python': ['flake8']}
let g:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:airline#extensions#ale#enabled = 1
