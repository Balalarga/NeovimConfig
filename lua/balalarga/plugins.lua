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

local coq_path = vim.fn.stdpath("data") .. "/lazy/coq_nvim"
if not vim.loop.fs_stat(coq_path) then
    vim.fn.system({
      "git",
      "-c core.symlinks=true",
      "clone",
      "https://github.com/ms-jpq/coq_nvim.git",
      "--branch=coq",
      coq_path,
    })
end

require("lazy").setup({
    "preservim/nerdtree",
    "ellisonleao/gruvbox.nvim",
    "mbbill/undotree",
    {
        "rose-pine/neovim",
        config = function()
            vim.cmd([[colorscheme rose-pine]])
        end,
    },
    {
        "Civitasv/cmake-tools.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function ()
            vim.cmd([[ TSUpdate ]])
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
    },
    {
        "ms-jpq/coq_nvim",
        branch = "coq",
        config = function()
            vim.cmd("COQnow -s")
        end,
    },
    {
        "ms-jpq/coq_nvim",
        branch = "coq",
    },
    {
        "ms-jpq/coq.thirdparty",
        branch = "3p"
    },
    -- Lsp parts
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "rcarriga/nvim-notify",
    "windwp/nvim-autopairs",
    "mfussenegger/nvim-dap",
    "kdheepak/lazygit.nvim",
})
