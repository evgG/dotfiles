setlocal tabstop=2 softtabstop=2 shiftwidth=2 
let g:javascript_plugin_jsdoc = 1
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"
set conceallevel=1

" syntastic configuration
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']

" tern
let g:javascript_enable_domhtmlcss = 1
let g:tern_map_keys=1

" nmap K :TernDoc<CR>
" nmap <F4> :TernDef<CR>

function! tern#DefaultKeyMap(...)
  execute 'nnoremap <buffer> K :TernDoc<CR>'
  execute 'nnoremap <buffer> <F4> :TernDef<CR>'
  execute 'nnoremap <buffer> <C-c>n :TernRefs<CR>'
  execute 'nnoremap <buffer> <C-c>r :TernRename<CR>'
  execute 'nnoremap <buffer> <C-c>t :TernType<CR>'
endfunction
