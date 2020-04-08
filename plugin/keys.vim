cnoremap <C-A> <C-B>
cnoremap w!! w !sudo tee % >/dev/null

noremap <C-n> :bn<CR>
noremap <C-p> :bp<CR>
noremap <Leader>n :bn<CR>
noremap <Leader>p :bp<CR>
noremap <Leader>, :nohlsearch<CR>
noremap <Leader>c :set cursorline! cursorcolumn!<CR>
noremap <F2> :w !diff '%' -<CR>
noremap <F4> :setlocal spell! spelllang=en_us<CR>
noremap <F5> :SyntasticCheck<CR>
noremap <Leader>, :nohlsearch<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Leader>- :resize -1<CR>
nnoremap <Leader>= :resize +1<CR>
nnoremap <C-y> :!echo "<C-R>"" \| xsel -b >/dev/null<CR>
