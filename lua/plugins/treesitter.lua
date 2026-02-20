return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function(_, opts)
        -- IMPORTANT: require the configs module, not just 'nvim-treesitter'
        require("nvim-treesitter.configs").setup(opts)
    end,
    opts = {
        -- A list of parser names or tiers to always install
        ensure_installed = {
            "c",
            "cpp",
            "cmake",
            "glsl",
            "csv",
            "gitignore",
            "gitattributes",
            "gitcommit",
            "go",
            "ini",
            -- "json5",
            "json",
            "lua",
            "python",
            "toml",
            "yaml",
            "xml",
            "vim",
            "vimdoc",
            "markdown",
            "markdown_inline",
            "javascript",
            "zig",
        },
        auto_install = true, -- Automatically install missing parsers when entering buffer
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
    }
}
