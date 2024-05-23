return {
	"nvim-telescope/telescope.nvim",

	tag = "0.1.6",

	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		local builtin = require("telescope.builtin")
		-- keymaps
		vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Find files" })
		vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Find git tracked files" })
		vim.keymap.set("n", "<leader>pws", function()
			local word = vim.fn.expand("<cword>")
			builtin.grep_string({ search = word })
		end, { desc = "Grep word search under cursor" })
		vim.keymap.set("n", "<leader>pWs", function()
			local word = vim.fn.expand("<cWORD>")
			builtin.grep_string({ search = word })
		end, { desc = "Grep WORD search under cursor" })
		vim.keymap.set("n", "<leader>ps", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end, { desc = "Grep search" })
		vim.keymap.set("n", "gd", builtin.lsp_definitions, { desc = "Go to definition" })
		vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "Go to reference" })
		vim.keymap.set("n", "<leader>vds", builtin.lsp_document_symbols, { desc = "View document symbols" })
		vim.keymap.set("n", "<leader>vws", builtin.lsp_dynamic_workspace_symbols, { desc = "View workspace symbols" })

		require("telescope").setup({
			pickers = {
				find_files = {
					find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
				},
			},
		})
	end,
}
