" Disable python folding
let g:pymode_folding = 0

" Switch pylint, pyflakes, pep8, mccabe code-checkers
" Can have multiply values "pep8,pyflakes,mcccabe"
let g:pymode_lint_checker = "pyflakes,pep8"

" Skip errors and warnings
let g:pymode_lint_ignore = "E501,E226"
