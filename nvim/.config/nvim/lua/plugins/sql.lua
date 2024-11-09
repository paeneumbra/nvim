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
                "sqlfluff",
            })
        end,
    },

    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                sql = { "sqlfluff" },
            },
            default_format_opts = {
                timeout_ms = 5000,
            },
            formatters = {
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
        },

        {
            "mfussenegger/nvim-lint",
            opts = {
                -- https://www.lazyvim.org/plugins/linting
                -- Event to trigger linters
                events = { "BufWritePost", "BufReadPost", "InsertLeave" },
                linters_by_ft = {
                    sql = { "sqlfluff" },
                },
            },
        },
    },
}
