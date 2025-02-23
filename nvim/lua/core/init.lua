require("core.set")
require("core.remap")
require("core.lazy_init")

-- highlight when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "highlight text when yanking",
	group = vim.api.nvim_create_augroup("HighlightYank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
	callback = function(e)
		vim.keymap.set("n", "K", function()
			vim.lsp.buf.hover()
		end, { desc = "hover", buffer = e.buf })

		vim.keymap.set("i", "<C-h>", function()
			vim.lsp.buf.signature_help()
		end, { desc = "insert mode help", buffer = e.buf })

		vim.keymap.set("n", "<leader>vd", function()
			vim.diagnostic.open_float()
		end, { desc = "view [d]iagnostic", buffer = e.buf })

		vim.keymap.set("n", "]d", function()
			vim.diagnostic.goto_next()
		end, { desc = "go next [d]iagnostic message", buffer = e.buf })

		vim.keymap.set("n", "[d", function()
			vim.diagnostic.goto_prev()
		end, { desc = "go prev [d]iagnostic message", buffer = e.buf })

		vim.keymap.set("n", "<leader>vca", function()
			vim.lsp.buf.code_action()
		end, { desc = "code action", buffer = e.buf })

		vim.keymap.set("n", "<leader>vrn", function()
			vim.lsp.buf.rename()
		end, { desc = "rename variable", buffer = e.buf })
	end,
})
