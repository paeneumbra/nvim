-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {

    -- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/lang/json.lua
    -- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/lang/yaml.lua
    -- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/lang/toml.lua

    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "fixjson",
                "yamlfmt",
            })
        end,
    },

    {
        "stevearc/conform.nvim",
        opts = {
            formatters = {
                yamlfmt = {
                    prepend_args = {
                        "-formatter",
                        "retain_line_breaks=true",
                    },
                },
            },
            formatters_by_ft = {
                json = { "fixjson" },
                yaml = { "yamlfmt" },
            },
            default_format_opts = {
                timeout_ms = 5000,
            },
        },
    },
}
