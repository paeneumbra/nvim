-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {

    --https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/lang/markdown.lua
    { import = "lazyvim.plugins.extras.lang.markdown" },

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
}
