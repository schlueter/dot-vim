" Disable Copilot for all filetypes by default
" Suggestions can be requested on demand using <M-\> (Optiom-\ on MacOS with
" configured terminal) or `:Copilot enable` can be used.
" Use <C-,> to accept the suggestion instead of Tab
"imap <C-,> copilot#Accept("\<CR>")
"let g:copilot_no_tab_map = v:true
let b:copilot_enabled = 1

autocmd ColorScheme solarized
      \ highlight CopilotSuggestion guifg=#88BB77 ctermfg=8
