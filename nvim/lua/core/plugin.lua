require("lazy").setup({
	-- theme
	{ "rose-pine/neovim", name = "rose-pine", priority = 1000 },

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
		opts = {},
		lazy = false,
	},
	"JoosepAlviste/nvim-ts-context-commentstring",

	-- file navigation
	{
		"theprimeagen/harpoon",
		branch = "harpoon2",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
		},
	},

	-- others
	"mbbill/undotree",
	"tpope/vim-surround",
	"NvChad/nvim-colorizer.lua",
	"lukas-reineke/indent-blankline.nvim",
	"nvim-tree/nvim-web-devicons",
	"nvim-lualine/lualine.nvim",
	"mg979/vim-visual-multi",
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {},
	},
})
