require("core.set")
require("core.remap")
require("core.lazy_plugins")

-- highlight when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight text when yanking",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
	callback = function(e)
		vim.keymap.set("n", "K", function()
			vim.lsp.buf.hover()
		end, { buffer = e.buf })

		vim.keymap.set("n", "<leader>vd", function()
			vim.diagnostic.open_float()
		end, { desc = "View [D]iagnostic", buffer = e.buf })

		vim.keymap.set("n", "]d", function()
			vim.diagnostic.goto_next()
		end, { desc = "Go next [D]iagnostic message", buffer = e.buf })

		vim.keymap.set("n", "[d", function()
			vim.diagnostic.goto_prev()
		end, { desc = "Go prev [D]iagnostic message", buffer = e.buf })

		vim.keymap.set("n", "<leader>vca", function()
			vim.lsp.buf.code_action()
		end, { desc = "Code action", buffer = e.buf })

		vim.keymap.set("n", "<leader>vrn", function()
			vim.lsp.buf.rename()
		end, { desc = "Rename variable", buffer = e.buf })

		vim.keymap.set("i", "<C-h>", function()
			vim.lsp.buf.signature_help()
		end, { buffer = e.buf })
	end,
})
