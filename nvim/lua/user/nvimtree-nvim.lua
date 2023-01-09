require'nvim-tree'.setup {
    hijack_directories = {
        enable = true,
        auto_open = false,
    },
    --auto_close  = false,
    open_on_tab = false,
    filters            = {
        dotfiles = true,
        custom = {'.git', 'node_modules', '.cache', '__pycache__'},
    }
}
local g = vim.g

vim.o.termguicolors = true

g.nvim_tree_side = 'left'
g.nvim_tree_width = 25
g.nvim_tree_quit_on_open = 0
--g.nvim_tree_follow = 1
g.nvim_tree_indent_markers = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_root_folder_modifier = ':t'
g.nvim_tree_allow_resize = 1

g.nvim_tree_show_icons = {
    git = 1,
    folders = 1,
    files = 1
}

g.nvim_tree_icons = {
    default = ' ',
    symlink = ' ',
    git = {
        unstaged = '✗',
        staged = '✓',
        unmerged = '',
        renamed = '➜',
        untracked = '★',
        deleted = '',
        ignored = '◌'
    },
    folder = {
        default = '',
        open = '',
        symlink = '',
        empty = '',
        empty_open = '',
        symlink_open = ''
    }
}
-- Mappings for nvimtree

vim.api.nvim_set_keymap( 'n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

--local tree_cb = require 'nvim-tree.config'.nvim_tree_callback
