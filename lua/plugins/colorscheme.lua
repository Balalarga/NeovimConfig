return {
    "rose-pine/neovim",
    dependencies = {
        "folke/tokyonight.nvim",
        "catppuccin/nvim",
    },
    config = function()
        require('rose-pine').setup({
            styles = {
                transparency = true,
            }
        })
        vim.cmd([[colorscheme rose-pine-moon]])
    end,
}
