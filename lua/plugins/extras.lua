-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {
    -- LSP outline functions window - <leader>cs to trigger
    { import = "lazyvim.plugins.extras.editor.outline" },
    -- Better yank (copy paste)
    { import = "lazyvim.plugins.extras.coding.yanky" },
    -- Better rename
    { import = "lazyvim.plugins.extras.editor.inc-rename" },
    -- current function/class as float window
    { import = "lazyvim.plugins.extras.ui.treesitter-context" },

    {
        "hrsh7th/nvim-cmp",
        dependencies = { "hrsh7th/cmp-emoji" },
        opts = function(_, opts)
            local cmp = require "cmp"
            opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
        end,
    }
}
