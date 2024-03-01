-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {

    --https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/lang/markdown.lua
    { import = "lazyvim.plugins.extras.lang.markdown" },
    { "lukas-reineke/headlines.nvim", enabled = false },

    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                ["markdown"] = { "markdownlint" },
            },
            format = {
                timeout_ms = 5000,
            },
        },
    },

    {
        "mfussenegger/nvim-lint",
        optional = true,
        opts = {
            linters_by_ft = {
                markdown = { "markdownlint" },
            },
        },
    },

    {
        -- https://github.com/ellisonleao/glow.nvim
        "ellisonleao/glow.nvim",
        opts = { border = "rounded", width = 120 },
        cmd = "Glow",
    },
}
