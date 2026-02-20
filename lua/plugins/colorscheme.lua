return {
    "catppuccin/nvim",
    dependencies = {
        "rose-pine/neovim",
        "folke/tokyonight.nvim",
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
