vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.smartindent = true
vim.opt.wrap = false


vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 4
vim.opt.expandtab = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
-- Use them together
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.updatetime = 100

vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "120"

vim.opt.undodir = vim.fn.stdpath 'data' .. '/.undodir'
vim.opt.undofile = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.cursorline = true

-- Global buffer
vim.opt.clipboard = "unnamed"

-- ^M line ending
vim.opt.fileformats = "dos"
