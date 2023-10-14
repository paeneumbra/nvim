-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {

    -- Java configuration is defined in LazyVim
    -- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/lang/java.lua

    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "graphql",
                "groovy",
                "kotlin",
            })
        end,
    },

    -- Install language servers
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                gradle_ls = {},
                graphql = {},
                groovyls = {},
                kotlin_language_server = {},
            },
            format = {
                timeout_ms = 5000,
            },
        },
    },

    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "ktlint",
            })
        end,
    },

    {
        "nvimtools/none-ls.nvim",
        opts = function(_, opts)
            if type(opts.sources) == "table" then
                local nls = require "null-ls"
                vim.list_extend(opts.sources, {
                    -- kotlin
                    nls.builtins.diagnostics.ktlint,
                    nls.builtins.formatting.ktlint,
                })
            end
        end,
    },

    -- {
    --     "stevearc/conform.nvim",
    --     opts = {
    --         formatters_by_ft = {
    --             kotlin = { "ktlint" },
    --         },
    --         format = {
    --             timeout_ms = 5000,
    --         },
    --     },
    -- },
    --
    -- {
    --     "mfussenegger/nvim-lint",
    --     opts = {
    --         linters_by_ft = {
    --             kotlin = { "ktlint" },
    --         },
    --         format = {
    --             timeout_ms = 5000,
    --         },
    --     },
    -- },
}
