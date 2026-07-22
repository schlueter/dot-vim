cnoremap <C-A> <C-B>
cnoremap w!! w !sudo tee % >/dev/null

noremap <C-n> :bn<CR>
noremap <C-p> :bp<CR>
noremap <F2> :w !diff '%' -<CR>
noremap <F4> :setlocal spell! spelllang=en_us<CR>
noremap <F5> :SyntasticCheck<CR>

" Activate crosshairs
noremap <Leader>c :set cursorline! cursorcolumn!<CR>
" goto next buffer
noremap <Leader>n :bn<CR>
" goto previous buffer
noremap <Leader>p :bp<CR>
" clear search highlights
noremap <Leader>, :nohlsearch<CR>
" close current buffer and go to previous one without closing the window
noremap <C-W><S-C> :bp<bar>sp<bar>bn<bar>bd<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Leader>- :resize -1<CR>
nnoremap <Leader>= :resize +1<CR>
nnoremap <C-y> :!echo "<C-R>"" \| xsel -b >/dev/null<CR>
