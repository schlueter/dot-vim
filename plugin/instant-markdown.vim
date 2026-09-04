filetype plugin on

"Theme
let g:instant_markdown_theme = 'dark'
"Don't start instant-markdown automatically when opening a markdown file
let g:instant_markdown_autostart = 0

" Trigger instant-markdown in markdown files when <leader>mp is pressed
augroup instant_markdown_preview
  autocmd!
  autocmd FileType markdown nnoremap <buffer> <silent> <leader>mp
        \ :InstantMarkdownPreview<CR>
augroup END

"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
