-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {

    --https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/lang/markdown.lua

    {
        "stevearc/conform.nvim",
        opts = {
            formatters = {
                -- By default lazyvim only enables the formatter if a diagnostic is present,
                -- It does not suit my use case, I want it always on.
                ["markdownlint-cli2"] = {
                    condition = function() return true end,
                },
            },
            formatters_by_ft = {
                markdown = { "markdownlint-cli2" },
                ["markdown.mdx"] = { "markdownlint-cli2" },
            },
        },
    },
}
