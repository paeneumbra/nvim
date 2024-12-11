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
        "williamboman/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "markdownlint-cli2",
            })
        end,
    },

    {
        "stevearc/conform.nvim",
        opts = {
            formatters = {
                ["markdownlint-cli2"] = {
                    condition = function(_, ctx)
                        local diag = vim.tbl_filter(function(d)
                            return d.source == "markdownlint"
                        end, vim.diagnostic.get(ctx.buf))
                        return #diag > 0
                    end,
                },
            },
            formatters_by_ft = {
                markdown = { "markdownlint-cli2" },
            },
        },
    },

    {
        "mfussenegger/nvim-lint",
        opts = {
            linters_by_ft = {
                markdown = { "markdownlint-cli2" },
            },
        },
    },
}
