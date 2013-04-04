set nocompatible                        " deactivate compatibility mode for vi

runtime bundle/vim-pathogen/autoload/pathogen.vim "load pathogen without putting it in autoload
call pathogen#infect()
"call pathogen#helptags()                "generate doc

" *** AUTOCMDS ***
syntax on
filetype plugin on
filetype indent on

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



" *** GENERAL OPTS ***
set number                              " show line numbering
set mouse=a                             " Enable mouse in terminal
set wildmenu                            " fancier completion
set wildignore=*.o,*.obj,*~             " ignore while tab completing
set incsearch                           " incremental search during search entry
set modeline                            " look for per-file modline
set showcmd                             " show cmd in status line
set showmatch                           " show matching brackets
set tabpagemax=30                       " max number of tabs ( -p cmdline option )
set ruler                               " status line stuff
"set hlsearch                            " highlights search matches
set incsearch                           " jump to first match while typing
set ignorecase                          " ignore case in search pattern
set smartcase                           " ignore ignorecase if search pattern has uppercase
set showbreak=+                         " line wrapping sign
set directory=~/.vim/tmp/               " swap directory (*.sw? files)
set cursorline                          " highlights active cursor line
set t_Co=256                            " proper color themes in terminal mode
set notitle                             " suppress 'Thanks for flying vim' message
set timeoutlen=250                      " less delay after pressing ESC
set nojoinspaces                        " avoids to 2 spaces after dots when joining lines
"set foldmethod=syntax                   " code folding
set tags=./tags;$HOME                   " walk directory tree upto $HOME looking for tags
set ls=2

