vim.opt.termguicolors = true

vim.opt.number = true           -- turn on line numbers
vim.opt.relativenumber = true

vim.opt.expandtab = true	      -- tabs -> spaces
vim.opt.tabstop = 2		          -- tab counts for 2 cols
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.hidden = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.colorcolumn = "80"

-- without this rust always gets 4 spaces
vim.g.rust_recommended_style = 0
