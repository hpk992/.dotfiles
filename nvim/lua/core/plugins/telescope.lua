return {
	"nvim-telescope/telescope.nvim",

    tag = '0.1.6',

    dependencies = {
        "nvim-lua/plenary.nvim"
    },


    config = function()
        local builtin = require("telescope.builtin")
        -- keymaps
        vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
        vim.keymap.set("n", "<C-p>", builtin.git_files, {})
        vim.keymap.set("n", "<leader>pws", function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({search = word })
        end)
        vim.keymap.set("n", "<leader>pWs", function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({search = word })
        end)
        vim.keymap.set("n", "<leader>ps", function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set("n", "gd", builtin.lsp_definitions)
        vim.keymap.set("n", "gr", builtin.lsp_references)
        vim.keymap.set("n", "<leader>vds", builtin.lsp_document_symbols)
        vim.keymap.set("n", "<leader>vws", builtin.lsp_dynamic_workspace_symbols)

        require("telescope").setup({
            pickers = {
                find_files = {
                    find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
                },
            },
        })
    end
}
