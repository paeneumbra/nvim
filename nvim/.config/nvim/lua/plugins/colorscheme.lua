-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {

    -- { "ellisonleao/gruvbox.nvim" },
    -- { "Shatur/neovim-ayu" },
    { "itzalak/thescream.nvim" },

    -- Configure LazyVim to load colorscheme
    {
        "LazyVim/LazyVim",
        opts = {
            -- colorscheme = "gruvbox",
            colorscheme = "thescream",
        },
    },
}
