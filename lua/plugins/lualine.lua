return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = function()
        return {
            options = {
                globalstatus = true,
            },
            sections = {
                lualine_c = {
                    {
                        'filename',
                        path = 1,
                    }
                },
            },
        }
    end,
}
