return {
    'karb94/neoscroll.nvim',
    opts = {
        mappings = { 'zt', 'zz', 'zb' },
    },
    config = function()
        require('neoscroll').setup(opts)
        -- Syntax: mappings[keys] = {function, {function arguments}}
        local mappings    = {}
        -- mappings['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '10'}}
        -- mappings['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '10'}}
        -- mappings['<C-b>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '250'}}
        -- mappings['<C-f>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '250'}}
        mappings['<C-y>'] = { 'scroll', { '-0.10', 'false', '20' } }
        mappings['<C-e>'] = { 'scroll', { '0.10', 'false', '20' } }
        mappings['zt']    = { 'zt', { '20' } }
        mappings['zz']    = { 'zz', { '20' } }
        mappings['zb']    = { 'zb', { '20' } }
        require('neoscroll.config').set_mappings(mappings)
    end,
}
