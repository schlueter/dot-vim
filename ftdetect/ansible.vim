function! s:isAnsible()
  let filepath = expand("%:p")
  let filename = expand("%:t")
  if filename =~ '\v/*.py' | return 0 | en
  if filepath =~ '\v/(tasks|roles|handlers)/.*\.ya?ml$' | return 1 | en
  if filepath =~ '\v/(playbooks|ansible)/' | return 1 | en

  return 0
endfunction

:au BufNewFile,BufRead * if s:isAnsible() | set ft=ansible | en
:au BufNewFile,BufRead hosts* set ft=ansible_hosts
