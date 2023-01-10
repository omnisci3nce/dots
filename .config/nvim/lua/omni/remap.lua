vim.keymap.set("n", "<leader>oo", vim.cmd.Ex)

vm.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vm.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- yank to + buffer (system clipboard)
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")
