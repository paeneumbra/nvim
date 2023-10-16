-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

local xdg_config = vim.env.XDG_CONFIG_HOME or vim.env.HOME .. "/.config"

---@param path string
local function have(path)
    return vim.loop.fs_stat(xdg_config .. "/" .. path) ~= nil
end

return {

    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {})

            local function add(lang)
                if type(opts.ensure_installed) ~= "table" then
                    table.insert(opts.ensure_installed, lang)
                end
            end

            vim.filetype.add {
                extension = { rasi = "rasi" },
            }

            add "git_config"

            if have "rofi" or have "wofi" then
                add "rasi"
            end
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
