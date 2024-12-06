vim.g.mapleader = " "

-- console log
vim.keymap.set("n", "co", "yiwoconsole.log(<Esc>pa)<Esc>i")

-- netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "back to netrw" })

-- clear highlight
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in the middle
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever : doesn't overwrite paste clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : yank into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "yank line to system clipboard" })

vim.keymap.set("i", "<C-c>", "<Esc>")

-- quickfix list navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "quickfix next" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "quickfix prev" })

vim.keymap.set(
	"n",
	"<leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "search and replace word" }
)
