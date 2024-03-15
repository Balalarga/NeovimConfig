return {
    "nvim-tree/nvim-tree.lua",
    opts = function ()
        vim.keymap.set('n', '<C-n>', "<cmd>:NvimTreeFocus<cr>")
        return {
            view = {
                width = 40,
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
