-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {

    {
        "hrsh7th/nvim-cmp",
        dependencies = { "hrsh7th/cmp-emoji" },
        opts = function(_, opts)
            local cmp = require "cmp"
            opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
        end,
    },

    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "luacheck",
                "shellcheck",
                "prettier",
            })
        end,
    },

    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                bash = { "shellcheck", "shfmt" },
                sh = { "shellcheck", "shfmt" },
                zsh = { "shellcheck", "shfmt" },
                css = { "prettier" },
                scss = { "prettier" },
                html = { "prettier" },
                javascript = { "prettier" },
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
}
