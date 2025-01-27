return {
    "tpope/vim-surround",
    -- "mg979/vim-visual-multi",
    "JoosepAlviste/nvim-ts-context-commentstring",
    "airblade/vim-gitgutter",

    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup()
        end,
    },

    {
        "NvChad/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end,
    },

    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").setup()
        end,
    },

    {
        "windwp/nvim-autopairs",
        config = true,
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

    {
        "nvim-treesitter/nvim-treesitter-context",
        config = function()
            require("treesitter-context")

            vim.keymap.set("n", "[v", function()
                require("treesitter-context").go_to_context(vim.v.count1)
            end, { desc = "jump to context upward", silent = true })
        end,
    },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {},
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            local hooks = require("ibl.hooks")
            hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
                vim.api.nvim_set_hl(0, "Default", { fg = "#262626" })
                vim.api.nvim_set_hl(0, "Scope", { fg = "#626262" })
            end)

            require("ibl").setup({
                indent = {
                    char = "▏",
                    highlight = "Default",
                },
                scope = {
                    highlight = "Scope",
                    show_start = false,
                    show_end = false,
                },
            })
        end
    }
}
