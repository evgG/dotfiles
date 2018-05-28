if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  "general
  call dein#add('tpope/vim-fugitive')
  call dein#add('rstacruz/sparkup', {'rtp': 'vim/'})
  call dein#add('majutsushi/tagbar')
  call dein#add('Shougo/unite.vim')
  call dein#add('vim-scripts/L9')
  call dein#add('vim-scripts/FuzzyFinder')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('bling/vim-airline')
  call dein#add('Valloric/YouCompleteMe', { 'build': './install.py --tern-completer' })
  call dein#add('vim-syntastic/syntastic')
  call dein#add('benmills/vimux')

  " Snippets + engine
  call dein#add('SirVer/ultisnips')
  call dein#add('honza/vim-snippets')

  " Python plugins
  call dein#add('klen/python-mode', { 'branch': 'develop', 'on_ft': [ 'python' ] })

  " js plugins
  "call dein#add('jelera/vim-javascript-syntax', { 'on_ft': [ 'javascript' ] })
  call dein#add('pangloss/vim-javascript', { 'on_ft': [ 'javascript' ] })
  call dein#add('ternjs/tern_for_vim', { 'on_ft': [ 'javascript' ] })

  " typescript plugins
  call dein#add('HerringtonDarkholme/yats.vim', { 'on_ft': [ 'typescript' ] })
  call dein#add('Quramy/tsuquyomi', { 'on_ft': [ 'typescript' ] })
  
  " html and css plugins
  call dein#add('mattn/emmet-vim', { 'on_ft': [ 'html', 'css' ] })

  " ember
  call dein#add('joukevandermaas/vim-ember-hbs', {'on_ft': [ 'handlebars'] })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

autocmd! bufwritepost .vimrc source %

" defaults
"colorscheme darkblue
"colorscheme wombat256mod
"colorscheme jellybeans
colorscheme molokai
set nowrap
set hls
set ic
set sidescroll=10
set autoindent
set autowrite
set incsearch
set tabstop=4
set shiftwidth=4
set fdm=indent
set fileencodings=utf-8,cp1251,koi8-r,cp866
set foldenable
set foldopen=all
set history=150
set listchars=tab:··
set list
set number
set showcmd
set showmatch
set smartcase

" filetype plugin on

" backups, swaps, etc
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif
set backupskip=/tmp/*,/private/tmp/*

set iskeyword+=:

" statusline
set laststatus=2

" binds
map <F10>	:wqa<CR>
map <Esc><Esc>	:q!<CR>
map <F6>	:set number!<CR>
map  <F2>       :NERDTreeToggle<CR>
map  <F3>       :tabnew<CR>
map! <F3><Esc>	:tabnew<CR>
map  <F7>       :tabnext<CR>
" Leader
let mapleader = ","
" gv
vnoremap < <gv
vnoremap > >gv

" vim-airlines config
let g:airline_theme='light'
"work with other plugins
let g:airline#extensions#branch#enabled = 1 
"let g:airline_fugitive_prefix = '⎇ '
let g:airline#extensions#syntastic#enabled = 1 
let g:airline#extensions#bufferline#enabled = 1 
"seps
let g:airline_left_sep = '▶' 
let g:airline_right_sep = '◀' 

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
  endif
let g:airline_symbols.paste = 'ρ' 
let g:airline_symbols.linenr = '¶ '
" buffers in airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

autocmd BufNewFile,BufRead *.js set filetype=javascript
autocmd BufNewFile,BufRead *.json set filetype=javascript
autocmd BufNewFile,BufRead *.ts set filetype=typescript
autocmd BufNewFile,BufRead *.py set filetype=python
autocmd BufNewFile,BufRead *.html set filetype=html
autocmd BufNewFile,BufRead *.css set filetype=css
autocmd BufNewFile,BufRead *.handlebars set filetype=handlebars
autocmd BufNewFile,BufRead *.hbs set filetype=handlebars
autocmd BufNewFile,BufRead *.tpl set filetype=html

autocmd FileType typescript setl omnifunc=tsuquyomi#complete

"let g:SuperTabDefaultCompletionType = "<c-n>"
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
set completeopt-=preview

" syntastic configuration
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

if has('gui_running')
  " set guioptions-=T  " no toolbar
  " set lines=60 columns=108 linespace=0
  set guifont=Cousine\ 10
endif
