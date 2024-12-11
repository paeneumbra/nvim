-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {
    --
    -- { "itzalak/thescream.nvim" },
    --
    -- {
    --     "LazyVim/LazyVim",
    --     opts = {
    --         colorscheme = "thescream",
    --     },
    -- },

    { dir = "/Users/simaof/foundry/laubwald.nvim" },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "laubwald",
        },
    },

    {
        "nvim-lualine/lualine.nvim",
        opts = function(_, opts)
            local theme = require "lualine.themes.laubwald"
            opts.options.theme = theme
        end,
    },
}
