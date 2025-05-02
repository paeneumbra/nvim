-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {

    -- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/util/dot.lua
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "ruby", -- Brewfile
                "git_config",
                "zathurarc",
                "xresources",
            })
        end,
    },

    {
        "mfussenegger/nvim-lint",
        opts = {
            linters_by_ft = {
                fish = { "fish" },
            },
        },
    },
}
