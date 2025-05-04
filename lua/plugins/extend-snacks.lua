-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {
    -- https://www.reddit.com/r/neovim/comments/1ittmg3/hidden_files_in_lazyvim/
    "folke/snacks.nvim",
    opts = {
        picker = {
            hidden = true,
            ignored = true,
        },
    },
}
