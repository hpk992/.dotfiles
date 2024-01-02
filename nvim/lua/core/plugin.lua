require("lazy").setup({
	-- theme
	{ "rebelot/kanagawa.nvim", priority = 1000 },

	-- git
	"tpope/vim-fugitive",

	-- treesitter
	"nvim-treesitter/nvim-treesitter",
	"nvim-treesitter/nvim-treesitter-context",

	-- lsp
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",

	-- linter
	"mfussenegger/nvim-lint",

	-- formatter
	"stevearc/conform.nvim",

	-- autocomplete
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",

	-- snippets
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",

	-- autopairs, autotags
	{
		"windwp/nvim-autopairs",
		config = true,
	},
	"windwp/nvim-ts-autotag",

	-- comment
	{
		"numToStr/Comment.nvim",
		opts = {
			-- add any options here
		},
		lazy = false,
	},
	"JoosepAlviste/nvim-ts-context-commentstring",

	-- others
	"mbbill/undotree",
	"tpope/vim-surround",
	"norcalli/nvim-colorizer.lua",
	"lukas-reineke/indent-blankline.nvim",
	{
		"theprimeagen/harpoon",
		branch = "harpoon2",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
})
