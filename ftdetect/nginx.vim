function! DetectNginx()
   for i in getline(1, 100)
      if i =~ '\v(http|server|(location .*)) \{'
         set filetype=nginx
         break
      endif
   endfor
endfunction

autocmd BufRead,BufNewFile * call DetectNginx()

autocmd BufNewFile,BufRead /etc/nginx/nginx.conf,/etc/nginx/conf.d/*,/etc/nginx/sites-* set ft=nginx
