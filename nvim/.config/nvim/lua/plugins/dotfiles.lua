-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
    { import = "lazyvim.plugins.extras.util.dot" },
    { import = "lazyvim.plugins.extras.editor.fzf"}
}
