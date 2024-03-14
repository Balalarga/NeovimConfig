local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
	require('plugins.telescope'),
	require('plugins.treesitter'),
	require('plugins.colorscheme'),
	require('plugins.nvim_lsp'),
	require('plugins.lazygit'),
	require('plugins.which_key'),
	require('plugins.undotree'),
	require('plugins.conform'),
	require('plugins.lualine'),
}


require('lazy').setup(plugins)
