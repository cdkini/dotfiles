let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black'],
\}
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = 'ℹ'
let g:airline#extensions#ale#enabled = 1
let g:ale_javascript_prettier_use_local_config = 1
