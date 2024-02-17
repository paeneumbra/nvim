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
            vim.list_extend(opts.ensure_installed, {
                "rasi", -- Linux rofi
                "ruby", -- Brewfile
                "git_config",
            })
        end,
    },

    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "fixjson",
                "luacheck",
                "shellcheck",
                "yamlfmt",
            })
        end,
    },

    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                json = { "fixjson" },
                yaml = { "yamlfmt" },
                bash = { "shfmt" },
                sh = { "shfmt" },
                zsh = { "shfmt" },
            },
            format = {
                timeout_ms = 5000,
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
                lua = { "luacheck" },
                sh = { "shellcheck" },
                zsh = { "shellcheck" },
            },
            -- LazyVim extension to easily override linter options
            -- or add custom linters.
            ---@type table<string,table>
            linters = {},
        },
    },

    {
        "nvimtools/none-ls.nvim",
        opts = function(_, opts)
            if type(opts.sources) == "table" then
                local nls = require "null-ls"
                vim.list_extend(opts.sources, {
                    nls.builtins.code_actions.shellcheck,
                })
            end
        end,
    },

    {
        "hrsh7th/nvim-cmp",
        dependencies = { "hrsh7th/cmp-emoji" },
        ---@param opts cmp.ConfigSchema
        opts = function(_, opts)
            local cmp = require "cmp"
            opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
        end,
    },

    {
        "folke/trouble.nvim",
        opts = { use_diagnostic_signs = true },
    },

    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = {
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },
            },
        },
    },
}
