function! s:isAnsible()
  let filepath = expand("%:p")
  let filename = expand("%:t")
  if filename =~ '\v/*.py' | return 0 | endif
  if filepath =~ '\v/(tasks|roles|handlers)/.*\.ya?ml$' | return 1 | en
  if filepath =~ '\v/(playbooks|ansible)/' | return 1 | en

  return 0
endfunction

function! s:isAnsibleHosts()
  let filepath = expand("%:p")
  let filename = expand("%:t")
  if filename =~ '/.*.ya?ml/' | return 0 | endif
  if filepath =~ 'inventory' && filename =~ 'inventory' | return 1 | endif
  return 0
endfunction

"autocmd BufNewFile,BufRead * if s:isAnsible() | set ft=ansible | endif
au BufNewFile,BufRead * if s:isAnsibleHosts() | set ft=ansible_hosts | endif
