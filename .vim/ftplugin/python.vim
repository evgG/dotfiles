setlocal ts=4 sts=4 sw=4 textwidth=79 expandtab autoindent fileformat=unix

let g:pymode_python = 'python3'
let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = ["flake8","pep8","pylint"]
let g:pymode_lint_on_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
"let g:pymode_breakpoint = 1
"let g:pymode_breakpoint_key = '<leader>b'
"
" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 1
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6
