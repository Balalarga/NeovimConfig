

vim.api.nvim_create_autocmd('TermOpen', {
    callback = function()
        vim.opt.number = false
        vim.opt.relativenumber = false
    end
})


vim.keymap.set("n", "<leader>tj",
    function()
        vim.cmd.vnew()
        vim.cmd.term()
        vim.cmd.wincmd("J")
        vim.api.nvim_win_set_height(0, 12)
    end
)
