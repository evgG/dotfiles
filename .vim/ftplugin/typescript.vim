setlocal tabstop=2 softtabstop=2 shiftwidth=2 

let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']
let g:syntastic_typescript_tsc_args = '--target ES6 --noEmit'
