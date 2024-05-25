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
        -- https://github.com/ellisonleao/glow.nvim
        "ellisonleao/glow.nvim",
        opts = { border = "rounded", width = 120 },
        cmd = "Glow",
    },
}
