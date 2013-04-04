function RememberLastPosition()
  if &ft =~ 'gitcommit'
    return
  endif
  if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endfunction

" Indention stuff
augroup indention
  autocmd FileType python,lua         set tabstop=4 shiftwidth=4 expandtab smarttab smartindent
  autocmd FileType make               set tabstop=8 shiftwidth=8 noexpandtab list
  autocmd FileType man                set tabstop=8 shiftwidth=8 noexpandtab
  autocmd FileType c,cpp              set tabstop=4 shiftwidth=4 noexpandtab
  autocmd FileType tex                set tabstop=4 shiftwidth=4 textwidth=78 wrap linebreak expandtab spell spelllang=en iskeyword+=:
  "autocmd FileType tex                set makeprg=pdflatex\ \"%\"&&evince\ \"%<.pdf\"
  autocmd FileType vimwiki            set ts=2 sw=2 tw=78 wrap lbr et
  autocmd FileType vim                set ts=2 sw=2 expandtab
  autocmd FileType mail               set tw=72
  autocmd FileType gitcommit          set tw=72 sw=2 tabstop=2 et
augroup keybinding
  autocmd FileType c,cpp              map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
augroup misc
  autocmd BufNewFile,BufRead wscript* set filetype=python
  autocmd FileType notmuch*           set foldmethod=manual
  autocmd BufReadPost *               call RememberLastPosition()
  autocmd BufEnter *                  let &titlestring = "vim(" . expand("%:t") . ")" " set window title
augroup whiteSpaceErrors
  autocmd Syntax *                    syn match localWhitespaceError /\(\zs\%#\|\s\)\+$/ display
  autocmd Syntax *                    syn match localWhitespaceError / \+\ze\t/ display
augroup END
