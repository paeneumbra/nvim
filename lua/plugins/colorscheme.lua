-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {
    { "itzalak/thescream.nvim" },
    { "itzalak/basoa.nvim"},
    -- { dir = os.getenv "HOME" .. "/foundry/depository/basoa.nvim" },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "basoa-summer",
            -- colorscheme = "thescream",
        },
    },

    {
        "nvim-lualine/lualine.nvim",
        opts = function(_, opts)
            local theme = require "lualine.themes.basoa"
            opts.options.theme = theme
        end,
    },
}
