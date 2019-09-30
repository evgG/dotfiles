" vundle settings
set nocompatible
filetype off

"runtimepath
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.config/nvim/dein')
  call dein#begin('~/.config/nvim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  "general
  call dein#add('tpope/vim-fugitive')
  call dein#add('rstacruz/sparkup', {'rtp': 'vim/'})
  call dein#add('majutsushi/tagbar')
  call dein#add('Shougo/unite.vim')
  call dein#add('vim-scripts/L9')
  call dein#add('vim-scripts/FuzzyFinder')
  call dein#add('itchyny/lightline.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('neomake/neomake')
  call dein#add('benmills/vimux')

  " Snippets + engine
  call dein#add('SirVer/ultisnips')
  call dein#add('honza/vim-snippets')

  " Python plugins
  call dein#add('klen/python-mode', { 'branch': 'develop', 'on_ft': [ 'python' ] })
  call dein#add('deoplete-plugins/deoplete-jedi', { 'on_ft': [ 'python' ] })

  " js plugins
  call dein#add('pangloss/vim-javascript', { 'on_ft': [ 'javascript' ] })
  call dein#add('ternjs/tern_for_vim', { 'on_ft': [ 'javascript' ] })
  call dein#add('carlitux/deoplete-ternjs', { 'build': 'npm install -g tern', 'on_ft': [ 'javascript' ] })

  " typescript plugins
  call dein#add('HerringtonDarkholme/yats.vim', { 'on_ft': [ 'typescript' ] })
  call dein#add('Quramy/tsuquyomi', { 'on_ft': [ 'typescript' ] })
  call dein#add('mhartington/nvim-typescript', {'build': './install.sh', 'on_ft': [ 'typescript' ]})
  
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

" reload vim automaticly
autocmd! bufwritepost init.vim source %

" defaults
colorscheme wombat256mod
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
map  <F10>      :wqa<CR>
map  <Esc><Esc> :q!<CR>
map  <F6>       :set number!<CR>
map  <F2>       :NERDTreeToggle<CR>
map  <F3>       :tabnew<CR>
map! <F3><Esc>  :tabnew<CR>
map  <F7>       :tabnext<CR>
" Leader
let mapleader = ","
" gv
vnoremap < <gv
vnoremap > >gv

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

let g:python_host_prog = expand('~/.pyenv/def_27/bin/python')
let g:python3_host_prog = expand('~/.pyenv/def_3/bin/python3')
let g:deoplete#sources#jedi#python_path = 'python3'
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'filename', 'readonly', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
set completeopt-=preview

let g:neomake_open_list = 5
set statusline+=%#warningmsg#
set statusline+=%*

" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
let g:deoplete#enable_at_startup = 1

if has('gui_running')
  set guifont=Cousine\ 10
endif
