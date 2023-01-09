require("paq")({
	"savq/paq-nvim", -- Let Paq manage itself

	-- helpers: icon, fuctions, colors etc
	"nvim-lua/plenary.nvim",
	"nvim-lua/popup.nvim",
	"kyazdani42/nvim-web-devicons",
	"windwp/nvim-autopairs",
	"rktjmp/lush.nvim",
	"ViViDboarder/wombat.nvim",
	"tanvirtin/monokai.nvim",
	--'kabouzeid/nvim-lspinstall';
	"kyazdani42/nvim-tree.lua",
	"nvim-lualine/lualine.nvim",
	-- completion
	"hrsh7th/nvim-cmp", -- completion plugin
	"hrsh7th/cmp-nvim-lsp", -- lsp completion
	"hrsh7th/cmp-buffer", -- buffer completion
	"hrsh7th/cmp-path", -- path completion
	"hrsh7th/cmp-cmdline", -- cmd completion
	"rafamadriz/friendly-snippets", -- friendly snippets for different langs
	--  For luasnip users.
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	--  For vsnip users.
	--'hrsh7th/cmp-vsnip';
	--'hrsh7th/vim-vsnip';
	--
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	-- 'mfussenegger/nvim-dap'; - dap - Debug Adapter Protocol
	"jose-elias-alvarez/null-ls.nvim",
	-- 'nvim-lua/completion-nvim';
	"nvim-lua/lsp_extensions.nvim",
	"nvim-treesitter/nvim-treesitter",

	"lewis6991/gitsigns.nvim",
	"akinsho/bufferline.nvim",
	"folke/trouble.nvim",
	"lukas-reineke/indent-blankline.nvim",
	-- telescope
	"nvim-telescope/telescope.nvim",
	"nvim-telescope/telescope-media-files.nvim",

	"hkupty/iron.nvim", -- repl in nvim-term
	"folke/which-key.nvim", -- which key

	-- TODO: dashboard, repl
	--{'lervag/vimtex', opt=true};      -- Use braces when passing options

	--"general
	--call dein#add('rstacruz/sparkup', {'rtp': 'vim/'})
	--call dein#add('majutsushi/tagbar')
	--call dein#add('Shougo/unite.vim')
	--if !has('nvim')
	--  call dein#add('roxma/nvim-yarp')
	--  call dein#add('roxma/vim-hug-neovim-rpc')
	--endif
	--call dein#add('neomake/neomake')
	--call dein#add('benmills/vimux')

	--" Snippets + engine
	--call dein#add('SirVer/ultisnips')
	--call dein#add('honza/vim-snippets')

	--" Python plugins
	--call dein#add('klen/python-mode', { 'branch': 'develop', 'on_ft': [ 'python' ] })
	--"call dein#add('deoplete-plugins/deoplete-jedi', { 'on_ft': [ 'python' ] })

	--" js plugins
	--call dein#add('pangloss/vim-javascript', { 'on_ft': [ 'javascript' ] })
	--call dein#add('ternjs/tern_for_vim', { 'on_ft': [ 'javascript' ] })
	--" call dein#add('carlitux/deoplete-ternjs', { 'build': 'npm install -g tern', 'on_ft': [ 'javascript' ] })

	--" typescript plugins
	--call dein#add('HerringtonDarkholme/yats.vim', { 'on_ft': [ 'typescript' ] })
	--call dein#add('Quramy/tsuquyomi', { 'on_ft': [ 'typescript' ] })
	--call dein#add('mhartington/nvim-typescript', {'build': './install.sh', 'on_ft': [ 'typescript' ]})
	--
	--" html and css plugins
	--call dein#add('mattn/emmet-vim', { 'on_ft': [ 'html', 'css' ] })

	--" ember
	--call dein#add('joukevandermaas/vim-ember-hbs', {'on_ft': [ 'handlebars'] })
})
