-- defaults
--vim.cmd.colorscheme "wombat_classic"
vim.o.wrap = false
vim.o.hls = true
vim.o.ic = true
vim.o.sidescroll = 10
vim.o.autoindent = true
vim.o.autowrite = true
vim.o.list = true
vim.o.number = true
vim.o.showcmd = true
vim.o.showmatch = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.expandtab = true
vim.o.foldmethod = 'indent'
vim.o.foldenable = true
vim.o.foldopen = 'all'
vim.o.history = 150
vim.o.listchars = 'tab:··'
--vim.o.laststatus = 2

-- backups, swaps, etc
vim.o.swapfile = true
vim.o.backup = true
vim.o.backupdir = os.getenv("HOME") .. "/.config/nvim/backup"
vim.o.directory = os.getenv("HOME") .. "/.config/vim/swaps"
vim.o.undodir =  os.getenv("HOME") .. "/.config/vim/undo"
vim.o.backupskip = '/tmp/*,/private/tmp/*'

-- termguicolors and highlight colors
-- TODO: use colors from the scheme
vim.o.termguicolors = true
--vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

-- TODO no autocmd yet
--autocmd BufNewFile,BufRead *.js set filetype=javascript
--autocmd BufNewFile,BufRead *.json set filetype=javascript
--autocmd BufNewFile,BufRead *.ts set filetype=typescript
--autocmd BufNewFile,BufRead *.py set filetype=python
--autocmd BufNewFile,BufRead *.html set filetype=html
--autocmd BufNewFile,BufRead *.css set filetype=css
--autocmd BufNewFile,BufRead *.handlebars set filetype=handlebars
--autocmd BufNewFile,BufRead *.hbs set filetype=handlebars
--autocmd BufNewFile,BufRead *.tpl set filetype=html
--autocmd FileType typescript setl omnifunc=tsuquyomi#complete

vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.python3_host_prog = '$HOME/.pyenv/versions/def_3/bin/python3'
vim.g.ruby_host_prog = '$HOME/.gem/bin/neovim-ruby-host'
--vim.g.deoplete#sources#jedi#python_path = 'python3'


--plugins setup
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
    show_end_of_line = true,
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },

}

require('monokai').setup { palette = require('monokai').pro }

--set completeopt-=preview
--let g:neomake_open_list = 5
--set statusline+=%#warningmsg#
--set statusline+=%*

--" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
--" let g:UltiSnipsExpandTrigger="<c-j>"
--" let g:UltiSnipsJumpForwardTrigger="<c-b>"
--" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
--" " If you want :UltiSnipsEdit to split your window.
--" let g:UltiSnipsEditSplit="vertical"
--let g:deoplete#enable_at_startup = 1
