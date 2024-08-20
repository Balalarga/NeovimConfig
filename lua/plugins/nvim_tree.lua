return {
    "nvim-tree/nvim-tree.lua",
    opts = function()
        vim.keymap.set('n', '<C-n>', "<cmd>:NvimTreeToggle<cr>")
        return {
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
        }
    end,
}
