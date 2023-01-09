-- init.lua

require('plugins')
require('user.globals')
require('user.bindings')

-- plugins setup
require('user.treesitter-nvim')
require('user.statusline')
require('user.bufferline-nvim')
require('user.telescope-nvim')
require('user.nvimtree-nvim')
require('user.compe-nvim')
--require('user.iron-nvim')
require('user.whichkey-nvim')
require('user.mason-nvim')
require('user.trouble')
require('user.null-ls')
--require('lspconfig').pyright.setup{}
--require("nvim-autopairs").setup()
