-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {

    -- { dir = os.getenv "HOME" .. "/path/to/repository.nvim" },
    { "itzalak/thescream.nvim" },
    { "itzalak/basoa.nvim" },

    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {
            style = "moon",
        },
    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        opts = {
            flavour = "frappe",
        },
    },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "tokyonight",
            -- colorscheme = "basoa-summer",
            -- colorscheme = "catppuccin",
        },
    },

    -- {
    --     "nvim-lualine/lualine.nvim",
    --     opts = function(_, opts)
    --         local theme = require "lualine.themes.basoa"
    --         opts.options.theme = theme
    --     end,
    -- },
}
