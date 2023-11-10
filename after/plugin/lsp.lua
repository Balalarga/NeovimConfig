local lspconfig = require('lspconfig')
local coq = require "coq"
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()
mason_lspconfig.setup()

lspconfig.clangd.setup {}
lspconfig.clangd.setup(coq.lsp_ensure_capabilities())
lspconfig.cmake.setup{}

vim.keymap.set("n", "<F4>", "<cmd> ClangdSwitchSourceHeader <CR>")
vim.keymap.set("i", "<F4>", "<cmd> ClangdSwitchSourceHeader <CR>")
vim.keymap.set("v", "<F4>", "<cmd> ClangdSwitchSourceHeader <CR>")
