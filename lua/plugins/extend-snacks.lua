-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {
    -- https://github.com/LazyVim/LazyVim/discussions/6807
    "folke/snacks.nvim",
    opts = {
        picker = {
            hidden = true,
            ignored = true,
            sources = {
                files = {
                    hidden = true,
                    ignored = true,
                },
            },
        },
    },
}
