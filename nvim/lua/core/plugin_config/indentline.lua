local hooks = require("ibl.hooks")
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
	vim.api.nvim_set_hl(0, "Default", { fg = "#262626" })
	vim.api.nvim_set_hl(0, "Scope", { fg = "#D27E99" })
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
