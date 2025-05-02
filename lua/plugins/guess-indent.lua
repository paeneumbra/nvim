-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {
    "nmac427/guess-indent.nvim",
    lazy = false,
    opts = { auto_cmd = true, override_editorconfig = true },
}
