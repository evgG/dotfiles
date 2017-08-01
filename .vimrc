" vundle settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
"set rtp+=~/.vim/bundle/
"call vundle#rc()
call vundle#begin()
" vundle repos ... add more
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'klen/python-mode'
Plugin 'majutsushi/tagbar'
"Plugin 'ervandew/supertab' 
Plugin 'L9'
Plugin 'FuzzyFinder'
"Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
"Plugin 'davidhalter/jedi-vim'

" flake8
"Plugin 'scrooloose/syntastic'
Plugin 'vim-syntastic/syntastic'

" js plugins
Plugin 'jelera/vim-javascript-syntax', { 'for': [ 'javascript' ] }
Plugin 'pangloss/vim-javascript', { 'for': [ 'javascript' ] }
Plugin 'ternjs/tern_for_vim', { 'for': [ 'javascript' ] }
"Plugin 'heavenshell/vim-jsdoc', { 'for': [ 'javascript' ] }

" Snippets + engine
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end()

filetype plugin indent on
syntax on
" reload vim automaticly
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

filetype plugin on

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
autocmd BufNewFile,BufRead *.html set tabstop=2 softtabstop=2 shiftwidth=2 ft=html
autocmd BufNewFile,BufRead *.css set tabstop=2 softtabstop=2 shiftwidth=2 ft=css

"let g:SuperTabDefaultCompletionType = "<c-n>"
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
set completeopt-=preview

" syntastic configuration
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['jshint']
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

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
