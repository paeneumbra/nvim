-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {

    -- Configuration as defined in LazyVim
    -- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/lang/java.lua
    { import = "lazyvim.plugins.extras.lang.java" },
    -- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/lang/kotlin.lua
    { import = "lazyvim.plugins.extras.lang.kotlin" },

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
