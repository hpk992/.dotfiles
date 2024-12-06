return {
	"mfussenegger/nvim-lint",

	config = function()
		require("lint").linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
		}

		local lint_group = vim.api.nvim_create_augroup("Lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_group,
			callback = function()
				require("lint").try_lint()
			end,
		})

		vim.keymap.set("n", "<leader>l", function()
			require("lint").try_lint()
		end, { desc = "trigger linting" })
	end,
}
