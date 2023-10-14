-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {

    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {})
        end,
    },

    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "shellcheck",
                "luacheck",
            })
        end,
    },

    {
        "mfussenegger/nvim-lint",
        opts = {
            linters_by_ft = {
                lua = { "luacheck" },
                sh = { "shellcheck" },
            },
        },
    },

    -- {
    --     "stevearc/conform.nvim",
    --     formatters_by_ft = {
    --         lua = { "stylua" },
    --         sh = { "shfmt" },
    --         python = { "black" },
    --     },
    -- },

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
