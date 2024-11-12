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
    require('plugins.lazygit'),
    require('plugins.undotree'),
    require('plugins.conform'),
    require('plugins.lualine'),
    require('plugins.nvim_tree'),
    require('plugins.autopairs'),
    require('plugins.autocmp'),
    require('plugins.lsps'),
    require('plugins.vimbegood'),
    require('plugins.cmake_tools'),

    -- require('plugins.overseer'),
    -- require('plugins.which_key'),
    -- require('plugins.nvim_notify'),
    -- require('plugins.togglterm'),
    -- require('plugins.log_highlighter'),
}


require('lazy').setup(plugins)
