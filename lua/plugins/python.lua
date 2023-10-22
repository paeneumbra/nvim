-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {

    -- Python configuration is defined in LazyVim
    -- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/lang/python.lua
    { import = "lazyvim.plugins.extras.lang.python" },

    -- Black configuration
    -- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/formatting/black.lua
    { import = "lazyvim.plugins.extras.formatting.black" },
}
