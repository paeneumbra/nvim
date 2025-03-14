-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {

    -- { dir = os.getenv "HOME" .. "/path/to/repository.nvim" },
    { "itzalak/basoa.nvim" },

    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {
            style = "moon",
        },
    },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "tokyonight",
            -- colorscheme = "basoa-summer",
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
