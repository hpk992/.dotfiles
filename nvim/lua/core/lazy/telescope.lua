return {
    "nvim-telescope/telescope.nvim",
    branch = '0.1.x',
    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    config = function()
        local builtin = require("telescope.builtin")

        -- keymaps
        vim.keymap.set("n", "gd", builtin.lsp_definitions, { desc = "go to definition" })
        vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "go to reference" })

        vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "find files" })
        vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "find git tracked files" })

        vim.keymap.set("n", "<leader>ps", function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, { desc = "grep search" })

        vim.keymap.set("n", "<leader>pws", function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end, { desc = "grep word search under cursor" })

        vim.keymap.set("n", "<leader>pWs", function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end, { desc = "grep WORD search under cursor" })

        require("telescope").setup({
            pickers = {
                find_files = {
                    find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
                },
            },
        })
    end,
}
