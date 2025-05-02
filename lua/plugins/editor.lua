-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {

    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "luacheck",
                "shellcheck",
                "prettier",
                "fixjson",
                "yamlfmt",
            })
        end,
    },

    {
        "stevearc/conform.nvim",
        opts = {
            formatters = {
                -- By default lazyvim only enables the formatter if a diagnostic is present,
                -- It does not suit my use case, I want it always on.
                ["markdownlint-cli2"] = {
                    condition = function() return true end,
                },
                yamlfmt = {
                    prepend_args = {
                        "-formatter",
                        "retain_line_breaks=true",
                    },
                },
                sqlfluff = {
                    command = "sqlfluff",
                    args = {
                        "format",
                        "--dialect",
                        "postgres",
                        "--disable-progress-bar",
                        "--nocolor",
                        "-",
                    },
                },
            },
            formatters_by_ft = {
                bash = { "shellcheck", "shfmt" },
                sh = { "shellcheck", "shfmt" },
                zsh = { "shellcheck", "shfmt" },
                css = { "prettier" },
                scss = { "prettier" },
                html = { "prettier" },
                javascript = { "prettier" },
                json = { "fixjson" },
                yaml = { "yamlfmt" },
                markdown = { "markdownlint-cli2" },
                ["markdown.mdx"] = { "markdownlint-cli2" },
                sql = { "sqlfluff" },
            },
            default_format_opts = {
                timeout_ms = 5000,
            },
        },
    },

    {
        "mfussenegger/nvim-lint",
        opts = {
            events = { "BufWritePost", "BufReadPost", "InsertLeave" },
            linters_by_ft = {
                lua = { "luacheck" },
                bash = { "shellcheck" },
                sh = { "shellcheck" },
                zsh = { "shellcheck" },
            },
            linters = {},
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "graphql",
                "groovy",
            })
        end,
    },

    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                gradle_ls = {},
                graphql = {},
                groovyls = {},
            },
            default_format_opts = {
                timeout_ms = 5000,
            },
        },
    },
}
