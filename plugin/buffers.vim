" Shortcut buffer switching to # \ where # in 1..99
let c = 1
while c <= 99
  execute "nnoremap " . c . "<Leader> :" . c . "b\<CR>"
  let c += 1
endwhile
