-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {

    -- add more treesitter parsers
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "markdown",
                "markdown_inline",
            })
        end,
    },

    -- add any tools you want to have installed below
    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, { "markdownlint" })
        end,
    },

    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                ["markdown"] = { "markdownlint" },
            },
            format = {
                timeout_ms = 5000,
            },
        },
    },

    {
        "nvimtools/none-ls.nvim",
        opts = function(_, opts)
            if type(opts.sources) == "table" then
                local nls = require "null-ls"
                vim.list_extend(opts.sources, {
                    -- markdown
                    nls.builtins.diagnostics.markdownlint,
                })
            end
        end,
    },
}
