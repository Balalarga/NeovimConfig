return {
    "stevearc/conform.nvim",
    config = function()
        local conform = require('conform')
        conform.setup({
            notify_on_error = false,
            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            },
            formatters_by_ft = {
                go = { "goimports", "gofmt", },
                python = { "black" },
                ["*"] = { "injected", "trim_whitespace", },
            },
        })
        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*",
            callback = function(args)
                require("conform").format({ bufnr = args.buf })
            end,
        })
    end,
}
