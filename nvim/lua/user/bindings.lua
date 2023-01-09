-- bindings

-- requires

-- local vars
local map = vim.api.nvim_set_keymap
local noremap_opts = { noremap = true }

-- Leader
--vim.g.mapleader = ","
vim.g.mapleader = ' '


map('n', '<F10>'     , ':wqa<CR>',              {})
map('n', '<Esc><Esc>', ':q!<CR>',               {})
map('n', '<F6>'      , ':set number!<CR>',      {})
map('n', '<F2>'      , ':NvimTreeToggle<CR>',   {})
map('n', '<leader>r' , ':NvimTreeRefresh<CR>' , noremap_opts)
map('n', '<leader>n' , ':NvimTreeFindFile<CR>', noremap_opts)
map('n', '<F3>'      , ':tabnew<CR>'          , {})
map('v', '<'         , '<gv'                  , noremap_opts)
map('v', '>'         , '>gv'                  , noremap_opts)

-- trouble
local opts = {silent = true, noremap = true};
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", opts)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", opts)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", opts)
vim.keymap.set("n", "<leader>xR", "<cmd>TroubleToggle lsp_references<cr>", opts)

--telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
