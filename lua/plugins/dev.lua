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
        opts = {
            ensure_installed = {
                "bash",
                "json",
                "kotlin",
                "lua",
                "markdown",
                "markdown_inline",
                "query",
                "regex",
                "vim",
                "yaml",
            },
        },
    },

    -- add any tools you want to have installed below
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "helm-ls",
                "groovy-language-server",
                "gradle-language-server",
                "kotlin-language-server",
                "kotlin-debug-adapter",
                "ktlint",
                "markdownlint",
                "shellcheck",
                "shfmt",
                "stylua",
                "yaml-language-server",
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
                    nls.builtins.formatting.markdownlint,
                    -- kotlin
                    nls.builtins.diagnostics.ktlint,
                    nls.builtins.formatting.ktlint,
                })
            end
        end,
    },

    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                gradle_ls = {},
                groovyls = {},
                kotlin_language_server = {},
                helm_ls = {},
            },
            format = {
                timeout_ms = 5000,
            },
        },
    },

    -- override nvim-cmp and add cmp-emoji
    {
        "hrsh7th/nvim-cmp",
        dependencies = { "hrsh7th/cmp-emoji" },
        ---@param opts cmp.ConfigSchema
        opts = function(_, opts)
            local cmp = require "cmp"
            opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
        end,
    },
}
