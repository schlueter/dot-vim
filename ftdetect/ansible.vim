function! s:isAnsible()
  let filepath = expand("%:p")
  let filename = expand("%:t")
  if filename =~ '\v/*.py' | return 0 | endif
  if filepath =~ '\v/(tasks|roles|handlers)/.*\.ya?ml$' | return 1 | endif
  if filepath =~ '\v/(playbooks|ansible)/' | return 1 | endif

  return 0
endfunction

function! s:isAnsibleHosts()
  let filepath = expand("%:p")
  let filename = expand("%:t")
  if filename =~ '/.*.ya?ml/' | return 0 | endif
  if filepath =~ '\v/(inventory|ansible)/' && filename =~ '/.*hosts.*/' | return 1 | endif
  return 0
endfunction

autocmd BufNewFile,BufRead * if s:isAnsible() | set ft=ansible | endif
autocmd BufNewFile,BufRead * if s:isAnsibleHosts() | set ft=ansible_hosts | endif
