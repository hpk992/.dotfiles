return {
	"ThePrimeagen/git-worktree.nvim",

	dependencies = {
		"nvim-telescope/telescope.nvim",
	},

	config = function()
		vim.keymap.set(
			"n",
			"<leader>pt",
			"<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
			{ desc = "List worktree" }
		)

		vim.keymap.set(
			"n",
			"<leader>pT",
			"<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
			{ desc = "Create worktree" }
		)

		require("git-worktree").setup()
		require("telescope").load_extension("git_worktree")
	end,
}
