-- old school remaps
vim.g.mapleader = " "
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set("i", "<C-j>", "<Esc>")
vim.keymap.set("n", "Y", "y$")
vim.keymap.set("n","<leader>E", vim.cmd.Ex)

