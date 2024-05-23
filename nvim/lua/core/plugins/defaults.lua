return {
	"nvim-lua/plenary.nvim",

	"tpope/vim-surround",

    {
        "NvChad/nvim-colorizer.lua", 
        config = function()
            require('colorizer').setup()
        end
    },

    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").setup()
        end
    },

	{
		"windwp/nvim-autopairs",
		config = true,
	},

	"windwp/nvim-ts-autotag",

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

    {
        "nvim-treesitter/nvim-treesitter-context",
        config = function()
            require("treesitter-context")
        end
    },
    
}
